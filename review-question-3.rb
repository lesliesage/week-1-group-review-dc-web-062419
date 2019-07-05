# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def photos
    Photo.all.select {|photo| photo.user = self}
  end
end

class Photo
  attr_accessor :user
  @@all = []
  def initialize
    @user = user
    self.class.all << self
  end
  def self.all
    @@all
  end
  def comments
    Comment.all.select {|comment| comment.user = self}
  end
  def make_comment(text)
    Comment.new(self.user, self, text)
  end
end

class Comment
  @@all = []
  attr_accessor :user, :photo, :text
  def initialize(user, photo, text)
    @user = user
    @photo = photo
    @text = text
    self.class.all << self
  end
  def self.all
    @@all
  end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
p "===== Sophie"
p sandwich_photo.user.name
# => "Sophie"

p "===== an instance of a photo"
p sophie.photos
# => [#<Photo:0x00007fae2880b370>]

p "===== empty array"
p sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
p "===== a comment"
p sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

p "===== some comments"
p Comment.all
#=> [#<Comment:0x00007fae28043700>]
