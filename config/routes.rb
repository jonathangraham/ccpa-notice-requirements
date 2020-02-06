Rails.application.routes.draw do
  resources :notice_requirements, only: %i[index show edit destroy create new]

  root 'notice_requirements#index'
end
