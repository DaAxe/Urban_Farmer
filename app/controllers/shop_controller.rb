class ShopController < ApplicationController
# Taking all values in the Item model and saving it to the @items global variable

    def index
        @items = Item.all
    end

end
