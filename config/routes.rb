Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'dogs/breeds', to: 'dogs#breeds'
    end
  end
end
