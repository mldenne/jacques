Rails.application.routes.draw do

  scope :api do
    resources :notes
    get 'notes/tag/:name' => 'notes#show'
  end

end
