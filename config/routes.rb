Flatpages::Engine.routes.draw do
  resources :flatpages, only: :show, path: ''
end
