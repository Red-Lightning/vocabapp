Rails.application.routes.draw do
  root 'words#index'

  get 'wordlist' => 'words#wordlist'

  resources :words
end
