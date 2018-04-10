Rails.application.routes.draw do
  devise_for :users

  resources :investors

  resources :companies do
    resources :deals, only: [:new, :create]
  end

  resources :deals, except: [:new, :create] do
    resources :transactions
  end


  # /deals
  # /deals/4
  # /companies/5/deals/new
  # /deals/5/transactions/new


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
