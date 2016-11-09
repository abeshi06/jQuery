Rails.application.routes.draw do
  resources :chkboxes
  get 'js/index'
  get 'js/action'
  get 'js/hide'
  get 'js/onload'

end
