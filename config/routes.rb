TechReviewSite::Application.routes.draw do

  devise_for :users
root :to => 'top#index'
get '/products/:id'        =>   'products#show'
get '/search/'             =>   'top#search'
get'/entry/:id'            =>   'top#entry'
post'/entry/:product_id'   =>   'top#post'
end
