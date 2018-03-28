Rails.application.routes.draw do
  resources :categories, :soups

  root to: "categories#index"

  get "/allcategories", to: "categories#index"
  #Another similar way but it changes the url
  #Is get "/allcategories", to: redirect("/")

  get "/soups/:id/toggle_featured", to: "soups#touble_featured"
end
