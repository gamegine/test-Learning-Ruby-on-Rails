class CrudController < ApplicationController
    def create
        el = Restaurant.create()
        redirect_to crud_read_all_path
    end
    def readall
        @restaurants = Restaurant.all
    end
    def read
        @id = params[:id]
        @restaurant = Restaurant.find(params[:id])
    end
    def update
        @restaurant = Restaurant.find(params[:id])
        #@restaurant.update(name: params[:restaurant][:name])
        @restaurant.update(restaurant_params)
        redirect_to crud_read_id_path(params[:id])
    end 
    def delete
        Restaurant.delete(params[:id])
        redirect_to crud_read_all_path
    end
    private
        def restaurant_params
            params.require(:restaurant).permit(:name,:address)
        end
end
