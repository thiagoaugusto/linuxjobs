class ApplicationController < ActionController::Base    
    before_action :require_authentication

    helper_method :is_logged_in?, :current_user

    def is_logged_in?
        session[:user_id].present?
    end

    def current_user
        User.find(session[:user_id]) if is_logged_in?
    end

    def require_authentication
        unless is_logged_in?
            redirect_to root_path
        end
    end
end
