# Bookshelf Organizer
  # Take user input for book title, author first name and last name, and year published.
    # Add book to database.
    # Add book to array.
  # Allow user to repeat adding books as many times as they would like.
  # Ask how they would like their library to be sorted: alphabetically or chronologically?
    # If chronologically: order books by year published.
    # If alphabetically: order books by author's last name.

require 'sqlite3'
require 'faker'

books_db = SQLite3::Database.new("books.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    year_published INT
  )
SQL

books_db.execute(create_table_cmd)

list_of_books = []

puts "Hello! Let's get your bookshelf in order!"
puts "To add a book to your library, please fill out the following information."

begin
  puts "Title:"
  title = gets.chomp
  puts "Author's First Name:"
  first_name = gets.chomp
  puts "Author's Last Name:"
  last_name = gets.chomp
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

  list_of_books << new_book

  puts "Would you like to add another book to your library? (y/n)"
  another_book = gets.chomp
end until another_book == "n" || another_book == "no"