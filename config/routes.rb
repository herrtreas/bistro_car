Rails.application.routes.draw do
  match 'javascripts/bundle/:bundle.js', :to => 'bistro_car/bundle#show'
end
