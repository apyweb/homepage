
all = Page.find(:all) #, :conditions => {:id => 4})

all.each do |p|
  puts "Page #{p.title}"
  if p.content.present?
    p.content = p.content.gsub(/files\/apy\/0000/) do |s|
      puts s
    'files/0000'
    end
    begin
      p.save
    rescue Exception => e
      puts "Algo ha ido mal #{e}"
    end
  end
end


