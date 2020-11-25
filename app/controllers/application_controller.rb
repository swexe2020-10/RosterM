class ApplicationController < ActionController::Base
    private
    def current_teacher
         if session[:login_uid]
             Teacher.find_by(uid: session[:login_uid])
         end
    end
    helper_method :current_teacher
    
end
