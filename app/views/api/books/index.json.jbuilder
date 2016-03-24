json.books @books do |book|
  json.id book.id
  json.title book.title
  json.price book.price
  json.book_image book.book_image
  json.author_id book.author_id
end
