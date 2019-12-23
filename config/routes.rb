# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  # https://guides.rubyonrails.org/routing.html

  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
