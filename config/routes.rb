Rails.application.routes.draw do
  resources :posts, :memos, except: [:show] do
    collection do
      get 'search'
    end
  end
end