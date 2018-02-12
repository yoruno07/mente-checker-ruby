Rails.application.routes.draw do
    root 'ckeckers#index'
    resources :ckeckers,     only: [:create]
end
