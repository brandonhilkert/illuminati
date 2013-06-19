Illuminati::Application.routes.draw do
  root 'subscriptions#new'
  resources :subscriptions do
    get :done, on: :collection
    get :send_demo_email, on: :collection
  end
end
