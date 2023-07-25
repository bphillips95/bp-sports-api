class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index]
    before_action :authorized, only: [:persist]
    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        render json: users
    end

    def show 
      user = User.find(params[:id])
      render json: user
    end 
 
    def create
        # byebug
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def update 
      user = User.find(params[:id])
      user.update(user_params)
      render json: user
  end 

    def persist
        # byebug
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
      end
   
    private
   
    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name, :writer)
    end
  end