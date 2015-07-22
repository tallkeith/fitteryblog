Refinery::Blog::PostsController.class_eval do

     def index
       
        if request.format.rss?
          @posts = if params["max_results"].present?
            # limit rss feed for services (like feedburner) who have max size
            Post.recent(params["max_results"])
          else
            Post.newest_first.live.includes(:comments, :categories)
          end
        end
        
        @author = Refinery::User.find(params[:user_id]) unless params[:user_id].nil?

        @posts = @posts.where(user_id: params[:user_id]) unless params[:user_id].nil?

        respond_with ({:posts => @posts, :author => @author}) do |format|
          format.html
          format.rss { render :layout => false }
        end
      end



end