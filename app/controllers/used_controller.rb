class UsedController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @usedcoupon = UsedCoupon.new(
      user_id: current_user.id, coupon_id: params[:coupon_id]
    )
    @usedcoupon.save
    redirect_to("/coupon/usedcoupon/#{params[:coupon_id]}")
  end
end
