Hogwarts::Application.routes.draw do
    root :to => 'welcome#index'
    resources :students

    get '/houses' => 'houses#index'
    get '/students' => 'students#index'
    get '/students/new' => 'students#new'

end