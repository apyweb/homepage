
all = Attachment.find(:all, :conditions => {:content_type => 'image/jpeg'})

all.each do |a|
  begin
    a.regenerate_thumbnails!
    puts "Done #{a.filename}"
  rescue Exception => e
    puts "Error: #{e}"
  end

end
