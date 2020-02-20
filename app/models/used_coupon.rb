class UsedCoupon < ApplicationRecord
  validates :user_id, {presence: true}
  validates :coupon_id, {presence: true}
end
