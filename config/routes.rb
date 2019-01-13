Rails.application.routes.draw do
  resources :sites do
    resources :parts, param: :site_id
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
