class PageController < ApplicationController
  def index
    @topics = Topic.all
    if !current_user
      redirect_to new_user_session_path
    end
  end
end
