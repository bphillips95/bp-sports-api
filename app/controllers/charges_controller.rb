require 'stripe'
require 'dotenv'
Dotenv.load
class ChargesController < ApplicationController
    def create
        # byebug
        Stripe.api_key = ENV['stripe_API_key']
        token = params[:token]
        amount = params[:amount]
        charge = Stripe::Charge.create({
            amount: amount,
            currency: 'usd',
            source: token,
            description: 'Test Charge!'
        })
        render json: charge
    end
end