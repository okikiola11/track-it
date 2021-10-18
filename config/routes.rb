Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resource :authentication, only: [:create]
      post '/signup', to: 'users#create'
    end
  end
end
