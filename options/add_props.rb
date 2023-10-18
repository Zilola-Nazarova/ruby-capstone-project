require './classes/genre'

module AddProps
  def choose_label(item)
    puts 'Label title:'
    title = gets.chomp.to_s
    puts 'Label color:'
    color = gets.chomp.to_s
    label = @labels.find { |l| l.title == title } || Label.new(title, color)
    @labels << label unless @labels.include?(label)
    item.label = label
  end

  def choose_genre(item)
    puts 'Enter genre:'
    genre_name = gets.chomp
    genre = @genres.find { |g| g.name == genre_name } || Genre.new(genre_name)
    @genres << genre unless @genres.include?(genre)
    item.genre = genre
  end

  # def choose_author
  #   puts 'Enter author name:'
  #   item.author = author
  # end
end
