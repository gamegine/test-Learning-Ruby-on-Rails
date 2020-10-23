class PagesController < ApplicationController
    def test
        @menbers = ["a","b"]
    end
    def link
    end
    def restaurants
        @restaurants = Restaurant.all
    end
end
