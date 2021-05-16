class DogParksController < ApplicationController

    #new
    get "/dogparks/new" do
        @dog_park = DogPark.new
        erb :"dog_parks/new.html"
    end

    #create
    post "/dogparks" do 
        dog_park = current_user.dog_parks.create(params[:dogpark])
            if dog_park.valid?
            redirect "/dogparks/#{dog_park.id}"
            else
        flash[:errors] = dog_park.errors.full_messages
        redirect "/dogparks/new"
        end
    end

    #index
    get "/dogparks" do
        @dog_parks = DogPark.all
        erb :"dog_parks/index.html"
    end

    #show specific dog park
    get "/dogparks/:id" do
        @dog_park = DogPark.find(params[:id])
        erb :"dog_parks/show.html"
    end

    #edit
    get "/dogparks/:id/edit" do
        @dog_park = DogPark.find(params[:id])
        erb :"dog_parks/edit.html"
    end
    
    #edit
    patch "/dogparks/:id" do
        dog_park = DogPark.find(params[:id])
        if dog_park.update(params[:dogpark])
            redirect "/dogparks/#{dog_park.id}"
        else 
            flash[:errors] = dog_park.errors.full_messages
            redirect "/dogparks/#{dog_park.id}/edit"
        end
    end

    #delete
    delete "/dogparks/:id" do
        dog_park = DogPark.find(params[:id])
        dog_park.destroy
        redirect "/dogparks"
    end


end