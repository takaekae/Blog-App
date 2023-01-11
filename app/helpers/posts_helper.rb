module PostsHelper
    def date_time(post)
        post.published_at.strftime("%B %d at %I:%M %P")
    end
end