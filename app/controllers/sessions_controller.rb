class SessionsController < ApplicationController


    get "/login" do 
        erb :"sessions/new.html"
    end

    post "/sessions" do 
        #First find the user, then check to see if their password is equal to something. Then set the sesion id to the current user.
        user = User.find_by_username(params[:username])
        session[:user_id] = user.id
        if user && user.authenticate(params[:password])
            redirect "/"
        else 
            redirect "/login"
        end
    end

    get "/logout" do
        session.clear
        redirect "/"
    end


end