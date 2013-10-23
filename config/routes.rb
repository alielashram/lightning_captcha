EasyCaptchaExample::Application.routes.draw do
  resources :posts

  devise_for :users

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: :sign_out
  end

  captcha_route

  root :to => 'posts#index'

end
