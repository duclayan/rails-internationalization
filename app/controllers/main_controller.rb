class MainController < ApplicationController
    before_action :set_locale

    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end

    def set_locale
        @user = User.find(session[:user_id])
        if @user.language == "English"
            I18n.locale = 'en'
        elsif @user.language == "Filipino"
            I18n.locale = 'tl'
        end
    end
end