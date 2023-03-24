class PolyTreeNode
    attr_reader :value, :children, :parent
  def initialize(value)
    @parent = nil
    @children =  []
    @value = value
  end

#   def value 

  def parent=(new_parent)

    if @parent == nil
        @parent = new_parent
        @parent.children << self if !@parent.children.include?(self)
    elsif 
        old_child = @parent.children.delete(self)
        @parent = new_parent
        @parent.children << old_child if new_parent != nil
    end
  end

  def add_child(child_node)
    child_node.parent=self
  end
  
  def remove_child(child_node)
    child_node.parent=nil
  end

#   def dfs(target)
#     return self if self == target

#         children.each do |child|
#             # return child if dfs(child) != nil
#         end
#      return nil if self.parent == nil  
#   end

end