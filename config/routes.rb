Rails.application.routes.draw do

  resources :users
  resources :tags
  scope :api do
    resources :notes
    get 'notes/tag/:name' => 'tags#show'
  end

end
