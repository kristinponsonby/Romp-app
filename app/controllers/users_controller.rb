class UsersController < ApplicationController


    #The index of all users
   get "/users" do 
    @users = User.all
    erb :"users/index.html"
   end

   #Specific user page
   get "/users/:id" do 
    @user = User.find(params[:id])
    erb :"users/show.html"
   end

    #New user page
    get "/users/new" do
        erb :"users/new.html"
    end

    #Create new user
    post "/users" do 
        user = User.create(params)
        session[:user_id] = user.id
        redirect "/"
    end 






end