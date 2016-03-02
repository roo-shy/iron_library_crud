if Author.count == 0

  author = Author.new
  first_name = "Sandra"
  last_name = "Magsamen"
  bio = "Sandra Magsamen has touched millions of people, one heart at a time.
  Her products have been warmly embraced for over 25 years.
  As an artist, art therapist, mom, and award-winning author,
  Sandra uses her own creativity and spirit to design gifts, books,
  and collections that help people express themselves and connect with
  one other. Sandra reminds and teaches us to explore and experience each
  day with more heart, meaning, purpose, and joy."
  author.photo_url = "https://images-na.ssl-images-amazon.com/images/I/61OyRO1zOrL._UX250_.jpg"

  author.save

  book = Book.new
  title = "Peek-a-Boo, I Love You!"
  book.photo_url = "http://ecx.images-amazon.com/images/I/61eRsjavz4L._SY497_BO1,204,203,200_.jpg"
  price = "$6.47"
  author_id = "1"

  book.save

end
