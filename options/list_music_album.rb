module ListMusicAlbums
  def list_music_albums
    if @music_albums.empty?
      puts 'No music albums available.'
    else
      @music_albums.each_with_index do |album, index|
        puts "#{index + 1}. #{album.label} by
        #{album.author.first_name} #{album.author.last_name}  (#{album.genre.name})"
      end
    end
  end
end
