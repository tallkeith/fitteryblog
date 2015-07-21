# Open the Refinery::Admin::PagesController controller for manipulation
Refinery::Admin::UsersController.class_eval do
  def user_params_with_my_params
    user_params_without_my_params.merge(params.require(:user).permit(:image_id, :bio_url))
  end
  alias_method_chain :user_params, :my_params
end