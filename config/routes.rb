Rails.application.routes.draw do
  scope(path: '/api/v1.0') do
    scope :sessions do
      post nil, to: 'sessions#create', :defaults => { :format => 'json'}
      delete nil, to: 'sessions#destroy'
    end

    resources :customers, only: [:index, :show, :create, :update, :destroy]

    resources :taxonomies, only: [:index, :show, :create, :update, :destroy]
    resources :categories, only: [:index, :show, :create, :update, :destroy]
  end
end