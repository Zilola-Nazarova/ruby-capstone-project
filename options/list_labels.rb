module ListLabels
  def list_labels
    puts "\nLABELS LIST:\n"
    if @labels.empty?
      puts 'No labels found'
    else
      puts "#{i + 1}) Title: \"#{label.title}\", Color: #{label.color}, ID: #{label.id}"
    end
  end
end
