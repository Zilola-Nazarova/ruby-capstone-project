module ListBooks
  def list_books
    puts "\nBOOKS LIST:\n"
    if @books.empty?
      puts 'No books found'
    else
      @books.each_with_index do |book, i|
        puts "#{i + 1}) Publisher: #{book.publisher}, Publish Date: #{book.publish_date}, " \
             "Cover State: #{book.cover_state}, Is Archived: #{book.archived}"
      end
    end
  end
end
