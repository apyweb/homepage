ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'ver'
  map.deudaecologia '/deudaecologica', :controller => 'ver', :action => 'pagina', :id => 99
  map.connect '/buscar', :controller => 'ver', :action => 'buscar'
  map.connect '/:id', :controller => 'ver', :action => 'pagina'

end
