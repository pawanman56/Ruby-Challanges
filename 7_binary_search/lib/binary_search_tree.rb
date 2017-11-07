class BinaryTree
    attr_accessor :root, :total_nodes
  
    # Creates a new tree and optionally initializes it with a node 
    # with the _value_ indicated.
    def initialize(first_value = nil)
      if first_value == nil
        @root = nil
        @total_nodes = 0
      else
        @root = Node.new(first_value)
        @total_nodes = 1
      end
    end
    
    # Adds a new node to the tree with the new_value indicated
    def add(new_value)
      if @root == nil
        @root = Node.new(new_value)
        @total_nodes = 1
        return
      end
  
      current = @root
      while(true)
        if new_value >= current.value
          if current.right == nil
            current.right = Node.new(new_value)
            break
          else
            current = current.right
          end
        else
          if current.left == nil
            current.left = Node.new(new_value)
            break
          else
            current = current.left
          end
        end
      end
  
      @total_nodes += 1
    end
  
    # Deletes the first node on the tree with the specified _value_.
    def delete(value)
      node = search(value)
      return if node == nil
      if is_root?(node)
        delete_root()
      else
        delete_node(node)
      end
    end
  
    def min
      find_min_from_node(@root)
    end
   
    def max
      find_max_from_node(@root)
    end 
    
    def count
      return @total_nodes
    end
    
    # Performs a binary search on the tree. 
    # Returns the node found or nil if no node was found.
    # If a block is passed, yields execution on each node evaluated during the search.
    def search(value)
      node = @root
      while(true)
        return nil if node == nil
        yield node if block_given?
        return node if value == node.value 
        if value < node.value 
          node = node.left
        else
          node = node.right
        end
      end
    end
      
    # Returns true if the tree is empty
    def is_empty?
      @total_nodes == 0
    end
    
    #------------------------------------------------
    private
  
    # Deletes the specified _node_ from the tree.
    def delete_node(node)
  
      # Algorithm taken from
      # http://www.algolist.net/Data_structures/Binary_search_tree/Removal
    
      parent = find_parent_node(node)
      is_left_node = node.value < parent.value
          
      # case 1
      if node.is_leaf?
        if is_left_node   
          parent.left = nil
        else
          parent.right = nil
        end
        @total_nodes -= 1
        return
      end		
      
      # case 2
      if node.has_one_child_only?
        if is_left_node
          parent.left = node.left if node.has_left_children?
          parent.left = node.right if node.has_right_children?
        else
          parent.right = node.left if node.has_left_children?
          parent.right = node.right if node.has_right_children?
        end
        @total_nodes -= 1
        return
      end
       
      # case 3 - node has two children
      # Do not decrease total number of nodes here 
      # as the actual delete happens in the recursive call.
      min_node_to_the_right = find_min_from_node(node.right)
      min_value_to_the_right = min_node_to_the_right.value
      delete_node(min_node_to_the_right)
      node.value = min_value_to_the_right		
    end
    
    # Deletes the root node of the tree.
    def delete_root()
      
      if (@root.is_leaf?)
        @root = nil
        @total_nodes = 0
        return
      end
      
      if @root.has_one_child_only?
        if @root.has_left_children?
          @root = @root.left
        else
          @root = @root.right
        end
        @total_nodes -= 1
        return
      end
      
      # Use the same approach as when deleting a node with two
      # children.
      min_node_to_the_right = find_min_from_node(@root.right)
      min_value_to_the_right = min_node_to_the_right.value
      delete_node(min_node_to_the_right)
      @root.value = min_value_to_the_right	
    end
  
    # Returns the parent node for the indicated _node_.
    # Returns nil if the indicated _node_ is the root of the tree.
    # Raises ArgumentException if the indicated _node_ does not exist on the tree. 
    def find_parent_node(node)
    
      #no parent for root node
      return nil if is_root?(node) 
      
      current = @root
      parent = nil
      node_found = false
      
      while(current != nil)
        
        if current.object_id == node.object_id
          node_found = true
          break
        end
        
        parent = current
        if node.value > current.value
          current = current.right
        else
          current = current.left
        end
      end
      
      raise ArgumentError, "Node indicated could not be found." if node_found == false
      
      return parent			
    end	
    
    # Returns true if the indicated _node_ is the root of the tree.
    def is_root?(node)
      return @root.object_id == node.object_id
    end
  
    # Internal class to represent nodes in the tree
    class Node
      attr_accessor :value, :left, :right
      def initialize(value)
        @value = value
        @left = nil
        @right = nil
      end
      
      def is_leaf?
        return @left == nil && @right == nil
      end
  
      def has_one_child_only?
        return false if has_left_children? && has_right_children?
        has_left_children? == true || has_right_children? == true
      end
      
      def has_left_children?
        @left != nil
      end
      
      def has_right_children?
        @right != nil
      end
    
      def <=>(other)
        @value <=> other.value
      end
      
    end
  
  end