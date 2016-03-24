json.books @books do |book|
  json.id book.id
  json.title book.title
  json.price book.price
  json.image_url attachment_url(book, :book_image, :fill, 300, 400, format: "jpg")
end
