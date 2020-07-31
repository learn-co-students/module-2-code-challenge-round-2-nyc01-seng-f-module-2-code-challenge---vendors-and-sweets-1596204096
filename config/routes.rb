Rails.application.routes.draw do
  resources :vendor_sweets, except: [:edit, :update, :destroy]
  resources :vendors, except: [:edit, :update, :destroy, :create, :new]
  resources :sweets, except: [:edit, :update, :destroy, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
