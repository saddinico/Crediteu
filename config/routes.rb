Rails.application.routes.draw do
  devise_for :users,controllers: { registrations: "registrations",
                                   sessions: "sessions" }

  resources :investors

  get 'pages/simulation'

  resources :companies


  resources :deals do
    resources :transactions do
      member do
        get :contract
      end
    end
  end



  # /deals
  # /deals/4
  # /companies/5/deals/new
  # /deals/5/transactions/new


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
