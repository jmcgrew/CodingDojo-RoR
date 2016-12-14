Rails.application.routes.draw do
  root 'surveys#index'

  post 'survey' => 'surveys#create'

  get 'result' => 'surveys#result'

  get 'reset' => 'surveys#reset'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
