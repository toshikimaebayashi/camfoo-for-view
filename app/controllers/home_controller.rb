class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def top
    @coupons = Coupon.all
  end
  
  def coupon
    @coupon = Coupon.find_by(id: params[:id])
  end
  
  def usedcoupon
    @coupon = Coupon.find_by(id: params[:coupon_id])
  end
  
end
