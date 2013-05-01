Spree::Core::Engine.routes.draw do
   #Add your extension routes here
  match '/shipworks/api' => 'api#action'
end

