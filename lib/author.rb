class Author 
  
  attr_accessor :name 
    @posts = []
  
  def initialize(name)
    @name = name 
  end 
  
  def add_post(new_post)
    @posts << new_post
    new_post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post 
    new_post.author = self 
  end 
  
  def self.post_count
    post_titles = @post.collect {|x| x.name}
    post_titles.length
  end
  
  def posts
    @posts 
  end
  
end 