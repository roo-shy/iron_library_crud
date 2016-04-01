require 'open-uri'
if Book.count == 0
  book = Book.new
  book.title = "Peek-a-Boo, I Love You!"
  book.price = 6.47
  book.author_id = 1
  book.inventory = 70
  url = "http://www.hachettebookgroup.com/_b2c/media/cache/7f/16/7f16ee797714f99d17d72ee8754b9c41.jpg"
  open(url, "rb") do |file|
    book.book_image = file
  end
  book.save

  book = Book.new
  book.title = "Giraffes Can't Dance"
  book.price = 4.24
  book.author_id = 2
  book.inventory = 40
  url = "http://17rg073sukbm1lmjk9jrehb643.wpengine.netdna-cdn.com/wp-content/uploads/2013/11/portada.jpg"
  open(url, "rb") do |file|
    book.book_image = file
  end
  book.save

  book = Book.new
  book.title = "May I Please Have a Cookie?"
  book.price = 3.25
  book.author_id = 3
  book.inventory = 35
  url = "http://www0.alibris-static.com/may-i-please-have-a-cookie/isbn/9780545815024_l.jpg"
  open(url, "rb") do |file|
    book.book_image = file
  end
  book.save

  book = Book.new
  book.title = "Sergio Makes a Splash"
  book.price = 10.99
  book.author_id = 2
  book.inventory = 55
  url = "http://images.barnesandnoble.com/images/33330000/33335058.jpg"
  open(url, "rb") do |file|
    book.book_image = file
  end
  book.save

  book = Book.new
  book.title = "Baby's Bedtime Storybook"
  book.price = 4.55
  book.author_id = 1
  book.inventory = 60
  url = "http://cdn.usborne.com/catalogue/covers/eng/max_covers/babybedtimestorybook.jpg"
  open(url, "rb") do |file|
    book.book_image = file
  end
  book.save

  book = Book.new
  book.title = "Oliver's Travels"
  book.price = 8.25
  book.author_id = 1
  book.inventory = 25
  url = "http://static.guim.co.uk/sys-images/Media/Pix/pictures/2009/9/1/1251821939758/Olivers-Travels---book-to-006.jpg"
  open(url, "rb") do |file|
    book.book_image = file
  end
  book.save

end

if Author.count == 0
  Author.create full_name: "Sandra Magsamen", bio: "Sandra Magsamen has touched millions of people, one heart at a time, photo_url
  Her products have been warmly embraced for over 25 years.
  As an artist, art therapist, mom, and award-winning author,
  Sandra uses her own creativity and spirit to design gifts, books,
  and collections that help people express themselves and connect with
  one other. Sandra reminds and teaches us to explore and experience each
  day with more heart, meaning, purpose, and joy.", photo_url:"https://images-na.ssl-images-amazon.com/images/I/61OyRO1zOrL._UX250_.jpg"
  Author.create full_name: "Giles Andreae", bio: "Giles Andreae is the award-winning and
  bestselling author of Rumble in the Jungle, The Lion Who Wanted to Love and keep Love in Your Heart,
  Little One. Giles is also the creator and voice behind Purple Ronnie. He lives in London.", photo_url:"https://images-na.ssl-images-amazon.com/images/I/31Ibn+XNwmL._UX250_.jpg"
  Author.create full_name: "Jennifer E. Morris", bio: "Jennifer is an author and illustrator
  of numerous books for children. She is the author of the Steve and Wessley Scholastic Reader series.
  She also wrote and illustrated, May I Please Have a Cookie? and Please Write Back! both featuring Alfie
  the Alligator. To learn more or download free activity and coloring pages that accompany Jennifer's books, visit www.jemorris.com",
  photo_url:"http://cps-static.rovicorp.com/3/JPG_400/MI0001/328/MI0001328712.jpg?partner=allrovi.com"
end
