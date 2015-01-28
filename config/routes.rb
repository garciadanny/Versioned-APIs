Rails.application.routes.draw do

  scope module: :v1, constraints: ApiConstraint.new(version: 1) do
    resources :posts, only: :index
  end
end
