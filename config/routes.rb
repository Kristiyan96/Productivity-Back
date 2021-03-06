# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api', defaults: { format: 'json' } do
  
    devise_for :users,
               path: '',
               path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
               },
               controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations',
                 passwords: 'users/passwords'
               }
    
               namespace 'users' do
      # get ':id/courses', controller: 'related', action: :courses
    end

  #   namespace 'admin' do
  #     resources :users, only: %i[index update]
  #     resources :hours, only: %i[index create update destroy]
  #     resources :teaching_sessions, only: %i[create update destroy]
  #     resources :expertises, only: %i[index create destroy]
  #     resources :courses, only: %i[create update destroy]
  #     resources :reports, only: %i[index show update]
  #   end
  end
end
