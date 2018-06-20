class CouponsController < ApplicationController
  before_action :set_coupon, only: :show
  before_action :coupon_params, only: :create
  
  
  def index 
    @coupons = Coupon.all 
  end 
  
  def show 
  end
  
  def new 
  end 
  
  def create 
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end 
  
  private 
  
  def set_coupon
    @coupon = Coupon.find(params[:id])
  end 
  
  def coupon_params 
    params.require(:coupon).permit(:coupon_code, :store)
  end
  
end
