class OrderController < ApplicationController

 # To Create new Stripe Order   
    def new
        @item = Item.find(params[:id])
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
            name: @item.title,
            description: "#{@item.description}",
            amount: (@item.price * 100).to_i,
            currency: 'aud',
            quantity: 1,
            }],
            payment_intent_data: {
            metadata: {
                user_id: current_user.id,
                book_id: @item.id
            }
            },
            success_url: "#{root_url}orders/complete",
            cancel_url: "#{root_url}",
            )
        
    end

end
