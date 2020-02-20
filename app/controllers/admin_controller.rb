class AdminController < ApplicationController
  before_action :basic, {only: [:top, :user, :coupon, :edit]}
  
  def top
  end
  
  def user
    @user = User.all.order(created_at: :desc)
  end

  def coupon
    @coupons = Coupon.all.order(created_at: :desc)
  end
  
  def new
  end
  
  def edit
    @coupon = Coupon.find_by(id: params[:id])
  end
  
  def create
    @coupon = Coupon.new(
      listCouponTitle: params[:listCouponTitle], 
      couponTitle: params[:couponTitle], 
      storeName: params[:storeName], 
      imageName: params[:imageName],
      utilityTime: params[:utilityTime],
      flag: params[:flag],
      utilityDay: params[:utilityDay],
      storeDetailUrl: params[:storeDetailUrl],
      storeLocationUrl: params[:storeLocationUrl],
      condition: params[:condition]
    )
    @coupon.save
    redirect_to("/admin")
  end
  
  def update
    @coupon = Coupon.find_by(id: params[:id])
    @coupon.listCouponTitle = params[:listCouponTitle]
    @coupon.couponTitle = params[:couponTitle]
    @coupon.storeName = params[:storeName]
    @coupon.imageName = params[:imageName]
    @coupon.utilityTime = params[:utilityTime]
    @coupon.flag = params[:flag]
    @coupon.utilityDay = params[:utilityDay]
    @coupon.storeDetailUrl = params[:storeDetailUrl]
    @coupon.storeLocationUrl = params[:storeLocationUrl]
    @coupon.condition = params[:condition]
    @coupon.save
    redirect_to("/admin")
  end
  
  def destroy
    @coupon = Coupon.find_by(id: params[:id])
    @coupon.destroy
    redirect_to("/admin")
  end
end
