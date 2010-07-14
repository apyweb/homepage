# To change this template, choose Tools | Templates
# and open the template in the editor.

module Apy::ApySite
  def area_of(page)
    area = page
    while(area.parent.id != 1) do
      area = area.parent
    end
    area
  end
end

