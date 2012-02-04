Ashtonharris::Application.routes.draw do
  root :to => 'pages#home', :as => 'home'
  
  get 'about' => 'pages#about' 
  get  "contact", :to => "contact#new", :as => "contact"
  post "contact", :to => "contact#create"
  get 'all_work', :to => 'pages#all_work'
   
  # work example link links
  get '/work/:page', :to => 'work#show',  :as => "work"
end
