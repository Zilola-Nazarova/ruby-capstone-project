module ListLabels
  def list_labels
    puts "\nLABELS LIST:\n"
    if @labels.empty?
      puts 'No labels found'
    else
      the_list
    end
  end

  def the_list
    @labels.each_with_index do |label, i|
      puts "#{i + 1}) [#{label.class.name}] Title: \"#{label.title}\", Color: #{label.color}, ID: #{label.id}"
    end
  end
end
