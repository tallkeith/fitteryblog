Refinery::Admin::UsersController.class_eval do

      def index
        if request.format.rss?
          @posts = if params["max_results"].present?
            # limit rss feed for services (like feedburner) who have max size
            Post.recent(params["max_results"]).where(user_id: params[:user_id])
          else
            Post.newest_first.live.includes(:comments, :categories).where(user_id: params[:user_id])
          end
        end
        respond_with (@posts) do |format|
          format.html
          format.rss { render :layout => false }
        end
      end
end