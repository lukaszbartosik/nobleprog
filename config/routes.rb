# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'privacy', to: 'static_pages#privacy'

  get 'aktualny_czas', to: 'static_pages#current_time'
end
