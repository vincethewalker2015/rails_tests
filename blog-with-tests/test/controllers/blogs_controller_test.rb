require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @blog = Blog.new(name: "first blog", description: "This is my first blog")
  end
  
  test "should get a new valid blog" do
    assert @blog.valid?
  end
  
  test "BlogName should be present" do
    @blog.name = ""
    assert_not @blog.valid?
  end
  
   test "BlogDescription should be present" do
    @blog.description = ""
    assert_not @blog.valid?
  end
  
  test "BlogName shouldn't be less than 5 characters" do
    @blog.name = "a" * 3
    assert_not @blog.valid?
  end
  
  test "description should not be more than 250 characters" do
    @blog.description = "a" * 251
    assert_not @blog.valid?
  end
  
  
end
