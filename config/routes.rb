Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'hotels#index'
  get 'hotels', to: 'hotels#index'
  get 'hotels/search', to: 'hotels#search', as: 'search_hotel'
  resources :contacts
  resources :hotels do
    resources :reviews
  end
  resources :prefectures

end
