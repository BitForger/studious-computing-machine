Rails.application.routes.draw do
  get 'aws_info/view'
  get 'aws_info/view/:name', to: 'aws_info#view_detail'

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
