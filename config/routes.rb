Spree::Core::Engine.routes.draw do
    #Add your extension routes here
  match '/shipworks/api' => 'api#action'
  #match '/api' => 'api#action'
end

#SpreeShipworks::Engine.routes.draw do
#  match '/api' => 'api#action'
#  match '/shipworks/api' => 'api#action'
#end
