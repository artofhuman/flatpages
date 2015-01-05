Flatpages::Engine.routes.draw do
  get '/:path', to: 'flatpages#show', as: 'flatpage'
end
