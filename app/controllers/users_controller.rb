class UsersController < ApplicationController

    #index of all users
   get "/users" do 
    @users = User.all
    erb :"users/index.html"
   end

   #Show user's profile
   get "/profile" do 
    redirect "/users/#{current_user.id}"
   end
   
   #New user page
   get "/users/new" do
       erb :"users/new.html"
   end

   #Specific user page
   get "/users/:id" do 
    @user = User.find(params[:id])
    erb :"users/show.html"
   end
   

    #Create new user
    post "/users" do 
        user = User.create(params)
        if user.valid?
          session[:user_id] = user.id
          redirect "/"
        else
            flash[:errors] = user.errors.full_messages
            redirect "/users/new"

        end
    end 






end