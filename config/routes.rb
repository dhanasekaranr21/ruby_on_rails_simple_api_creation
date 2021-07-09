Rails.application.routes.draw do
  namespace:ms do
    namespace:api do
      namespace:v1 do
        namespace:site do
          namespace:user do
            resources :tracks
          end
        end
      end
    end
  end
end
