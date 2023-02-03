require "test_helper"

class PostTest < ActiveSupport::TestCase

   setup do
      @post = Post.new(title: "My Title", description: "My Body", :name => "My Name")
   end

    test "Post has title " do
      assert @post.title == "My Title"
   end
end
