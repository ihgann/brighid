class HomeController < ApplicationController
  def index
    if user_signed_in?
      @courses = Course.where(user_id:current_user.id)
    end
  end

  def about
  end

  def terms_of_service
  end
  
  def privacy_policy
  end
end
