Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  # ---- 下記1行を追加してください ---- #
  post 'todolists' => 'todolists#create'
  # ---- 下記1行を追加してください ---- #
  get 'todolists' => 'todolists#index'
  # ---- 下記1行を追加してください ---- #
  get 'todolists/:id' => 'todolists#show', as: 'todolist' # .../todolists/1 や .../todolists/3 に該当する
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'   
  root to: 'todolists#index'   
end
