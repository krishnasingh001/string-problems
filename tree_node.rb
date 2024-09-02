class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

	def largest_values(root)
    return [] if root.nil?

    result = []
    queue = [root]
    
    while !queue.empty?
      result << queue.map(&:val).max

       queue = queue.flat_map do |node|
         [node.left, node.right].compact
       end
    end
    
    result
	end
end