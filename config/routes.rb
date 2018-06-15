Rails.application.routes.draw do
  #resources :propostes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope '/api' do
    resources :propostes, except: [:new, :edit]
  end
  
end
