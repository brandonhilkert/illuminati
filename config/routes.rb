Illuminati::Application.routes.draw do
  root 'subscriptions#new'
  resources :subscriptions do
    get :done, on: :collection
  end
end
