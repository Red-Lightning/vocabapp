Rails.application.routes.draw do
  get 'wordlist' => 'words#wordlist'

  resources :words
end
