#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---

#---
# Updated by @kinisoftware to work out exercise 2 at day 2 self-study
#---
class Tree
  attr_accessor :children, :node_name
  
  #---
  # Deprecated :D
  #def initialize(name, children=[])
  #  @children = children
  #  @node_name = name
  #end
  #--

  def initialize(tree = {})
    @node_name = tree.keys.first
    @children = []    
    tree[@node_name].each {|key, value| @children.push(Tree.new(key => value))}
  end
  
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

# ruby_tree = Tree.new( "Ruby", 
#   [Tree.new("Reia"), 
#    Tree.new("MacRuby")] )

# puts "Visiting a node"
# ruby_tree.visit {|node| puts node.node_name}
# puts

# puts "visiting entire tree"
# ruby_tree.visit_all {|node| puts node.node_name}

ruby_tree = Tree.new({'granpa' => { 'dad' => { 'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}


