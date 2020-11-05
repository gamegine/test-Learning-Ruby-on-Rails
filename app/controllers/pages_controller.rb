class PagesController < ApplicationController
    #before_action :authenticate_user! , only:
    skip_before_action :authenticate_user!
    def test
        @menbers = ["a","b"]
    end
    def link
    end
    def restaurants
        @restaurants = Restaurant.all
    end
end
