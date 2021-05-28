Rails.application.routes.draw do
  # scope '/api' obriga que todas as urls tenha o /api
  scope '/api', defaults: {format: :json} do
    resources :categories, only: [:index]
    resources :restaurants, only: [:index, :show]
    resources :orders, only: [:create, :show]
    resources :available_cities, only: [:index]
  end
end
