module UsersHelper
    
    def post_history(user)
        if user.posts.empty?
            "#{user.name} has not submitted any posts yet"
        else
            render @user.posts
        end
    end
    
    def comment_history(user)
        if user.comments.empty?
            "#{user.name} has not submitted any comments yet"
        else
            render @user.comments
        end
    end
    
end
