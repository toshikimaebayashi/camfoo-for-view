Rails.application.routes.draw do
  get 'privacy' => "terms#privacy"
  get 'lp' => "lp#person"
  get 'lp/person' => "lp#person"
  get 'lp/group' => "lp#group"

  devise_for :users
  post "usedcoupon/:coupon_id/create" => "used#create"
  get "coupon/usedcoupon/:coupon_id" => "home#usedcoupon"
  
  get 'admin' => "admin#top"
  get 'admin/user' => "admin#user"
  get 'admin/coupon' => "admin#coupon"
  get 'admin/new' => "admin#new"
  post 'admin/create' => "admin#create"
  get 'admin/:id/edit' => "admin#edit"
  post 'admin/:id/update' => "admin#update"
  post 'admin/:id/destroy' => "admin#destroy"
  
  get '' => "home#top"
  get 'coupon/:id' => "home#coupon"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
