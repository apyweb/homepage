

class PageSweeper < ActionController::Caching::Sweeper
  observe Page

  def after_update(page)
    logger.info "Cleaning cache #{page.id}"
    expire_page :controller => 'ver', :action => 'pagina', :id => page.id
    #expire_page root_path if page.id == SPECIAL_PAGES['root']
  end
end
