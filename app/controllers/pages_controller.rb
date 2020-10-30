class PagesController < ApplicationController
    before_action :authenticate_user!, only:
    def test
        @menbers = ["a","b"]
    end
    def link
    end
    def restaurants
        @restaurants = Restaurant.all
    end
end
