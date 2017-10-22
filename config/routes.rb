Rails.application.routes.draw do
  resources :ethnicities
  resources :nationalities
  resources :mother_tongues
  resources :occupations
  resources :genders
  resources :obsessions
  resources :order_alignments
  resources :secret_languages
  resources :moral_alignments
  resources :eye_colours
  resources :skin_base_tones
  resources :favourite_foods
  resources :favourite_drinks
  resources :ailments
  resources :star_signs
  resources :lastnames
  resources :firstnames
  resources :characters
  root 'characters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
