Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get "sign_up", to: "registrations#new"
    post "sign_up", to: "registrations#create"
    get "index", to: "registrations#index"

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: "main#index"
  end
end
