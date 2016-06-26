# Bookshelf Organizer
require 'sqlite3'

books_db = SQLite3::Database.new("books.db")
books_db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    year_published INT
  )
SQL

def create_book(books_db, title, first_name, last_name, year_published)
  books_db.execute("INSERT INTO books (title, first_name, last_name, year_published) VALUES (?, ?, ?, ?)", [title, first_name, last_name, year_published])
end

books_db.execute(create_table_cmd)

list_of_books = []

puts "Hello! Let's get your bookshelf in order!"
puts "To add a book to your library, please fill out the following information."

begin
  puts "Title:"
  title = gets.chomp.split.map { |x| x.capitalize }.join(" ")
  puts "Author's First Name:"
  first_name = gets.chomp.split.map { |x| x.capitalize }.join(" ")
  puts "Author's Last Name:"
  last_name = gets.chomp.split.map { |x| x.capitalize }.join(" ")
  puts "Year Published:"
  year_published = gets.chomp

  until year_published.length == 4
    if year_published.length == 4
      year_published = year_published.to_i
    else
      puts "Please enter a four-digit year."
      year_published = gets.chomp.to_i
    end
  end

  new_book = {
    title: title,
    first_name: first_name,
    last_name: last_name,
    year_published: year_published
  }

  puts "Your library now includes #{new_book[:title]}, written by #{new_book[:first_name]} #{new_book[:last_name]} and published in #{new_book[:year_published]}."

  create_book(books_db, title, first_name, last_name, year_published)

  puts "Would you like to add another book to your library? (y/n)"
  another_book = gets.chomp
end until another_book == "n" || another_book == "no"

# print books
puts "Here are all the books in your library:"
library = books_db.execute("SELECT * FROM books")
library.each do |book|
  puts "#{book['title']} by #{book['first_name']} #{book['last_name']}."
  puts "----------------------------------"
  list_of_books << book
end

puts "Would you like to organize your books alphabetically (by author's last name) or chronologically (by publication year)?"
organizational_preference = gets.chomp

# ensure correct input
if organizational_preference == "alphabetically" || organizational_preference == "chronologically"
  correct_input = true
else
  correct_input = false
  until organizational_preference == "alphabetically" || organizational_preference == "chronologically"
    puts "Please enter either 'alphabetically' or 'chronologically'."
    organizational_preference = gets.chomp
  end
end

# organize books
case organizational_preference
when "alphabetically"
  list_of_books.sort_by! { |hash| hash["last_name"]}
  puts "Great! Here is the list of books in your library, sorted alphabetically by author's last name:"
  list_of_books.each do |book|
    puts "#{book['last_name']}, #{book['first_name']} - #{book['title']}."
  end
when "chronologically"
  list_of_books.sort_by! { |hash| hash["year_published"]}
  "Great! Here is the list of books in your library, sorted chronologically by year published."
  list_of_books.each do |book|
    puts "#{book['year_published']} - #{book['title']} by #{book['last_name']}, #{book['first_name']}."
  end

end