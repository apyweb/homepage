class VerController < ApplicationController
  layout 'apy'
  before_filter :load_roots

  caches_page :index, :pagina

  def index
    @page = Page.find(8)
    @noticia = Page.find(163)
    @noticias = Page.find(:all, :conditions => {:parent_id => 163}, :limit => 6, :order => 'position DESC')
    @area = area_of @page
    render :action => 'noticias'
  end

  def buscar
    if params[:t].empty?
      redirect_to :back
    else
      @page = Page.new(:title => 'resultados de la búsqueda')
      @pages = Page.db_search(params[:t])
      @area = Page.new
      @area.metas.build(:name => 'color', :value => 'red')
    end
  end
	
  def pagina
    @page = Page.find(params[:id])
    @area = area_of @page
  end
	
  private
  def load_roots
    @roots = Page.find_all_by_parent_id(1, :conditions => ["id != ? AND id != ?", 2, 160])
  end

  def area_of(page)
    area = page
    while(area.parent.id != 1) do
      area = area.parent
    end
    area
  end
end
