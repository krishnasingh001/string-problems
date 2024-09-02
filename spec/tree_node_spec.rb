require_relative '../tree_node'
require 'rspec'

RSpec.describe TreeNode do
  let(:tree_node) { TreeNode.new }

  describe '#largest_values' do
    context 'when the tree is empty' do
      it 'returns an empty array' do
        expect(tree_node.largest_values(nil)).to eq([])
      end
    end

    context 'when the tree has only one node' do
      it 'returns an array with the value of the single node' do
        root = TreeNode.new(1)
        expect(tree_node.largest_values(root)).to eq([1])
      end
    end

    context 'when the tree has multiple levels' do
      it 'returns the largest values from each level' do
        root = TreeNode.new(1)
        root.left = TreeNode.new(3)
        root.right = TreeNode.new(2)
        root.left.left = TreeNode.new(5)
        root.left.right = TreeNode.new(3)
        root.right.right = TreeNode.new(9)

        expect(tree_node.largest_values(root)).to eq([1, 3, 9])
      end
    end

    context 'when all nodes have the same value' do
      it 'returns an array with the same value repeated' do
        root = TreeNode.new(7)
        root.left = TreeNode.new(7)
        root.right = TreeNode.new(7)
        root.left.left = TreeNode.new(7)
        root.left.right = TreeNode.new(7)
        root.right.right = TreeNode.new(7)

        expect(tree_node.largest_values(root)).to eq([7, 7, 7])
      end
    end
  end
end
