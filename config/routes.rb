Rails.application.routes.draw do
  root to: 'pages#index'
  post 'pages/two_factor_enabled'
end
