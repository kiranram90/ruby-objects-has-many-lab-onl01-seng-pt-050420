class Author 
  
  @@post = 0
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @@post += 1
  end
  
  def add_post(post)
    
  end
  
  def posts 
    Post.all.each do |posts|
     posts.author = self
   end
  end
  
  def self.post_count
    @@post
  end
  
end