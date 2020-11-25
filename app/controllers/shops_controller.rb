class ShopsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index
    def index
        @shops = Shop.all
    end

    def new
        if current_user.shop.present?
            render 'index'
        else
            @shop = Shop.new
        end
    end

    def create
        if @shop = Shop.create(shop_params)
            current_user.update_attributes(shop_id: @shop.id)
            redirect_to @shop
        else
            render 'new'
        end
    end

    def show
        @shop = Shop.find(params[:id])
    end

    private
        def shop_params
            params.require(:shop).permit(:name, :address, :phone_number)
        end
end