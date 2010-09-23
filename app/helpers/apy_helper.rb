module ApyHelper
  def color_of(page)
    color = page.meta(:color)
    color ||= '#fcfcfc'
  end

  def show_childs?(current_page, current_item)
    should_show_childs?(3, current_page, current_item)
  end

 def should_show_childs?(depth, current_page, current_item)
    current_item.depth < depth || (current_page == current_item && current_item.depth == depth && current_item.children.size > 0 ) || current_page.parent == current_item
  end

  
  def apy_tabs(current)
    tabs do 
      tab('dossier', {:action => 'dossier'}, current)
    end
  end
    
end
