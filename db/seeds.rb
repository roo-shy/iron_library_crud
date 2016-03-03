if Book.count == 0
  Book.create title: "Peek-a-Boo, I Love You!", photo_url: "http://ecx.images-amazon.com/images/I/61eRsjavz4L._SY497_BO1,204,203,200_.jpg", price: 6.47, author_id: 1
  Book.create title: "Giraffes Can't Dance", photo_url: "http://educationnews.educationviewsor.netdna-cdn.com/wp-content/uploads/2015/12/24926-6a00d83452418769e201157030bcd0970b-320wi.jpg", price: 4.24, author_id: 2
  Book.create title: "May I Please Have a Cookie?", photo_url: "http://www.jemorris.com/covers/cookie400.jpg", price: 3.25, author_id: 3
end

if Author.count == 0
  Author.create first_name: "Sandra", last_name: "Magsamen", bio: "Sandra Magsamen has touched millions of people, one heart at a time, photo_url
  Her products have been warmly embraced for over 25 years.
  As an artist, art therapist, mom, and award-winning author,
  Sandra uses her own creativity and spirit to design gifts, books,
  and collections that help people express themselves and connect with
  one other. Sandra reminds and teaches us to explore and experience each
  day with more heart, meaning, purpose, and joy.", photo_url:"https://images-na.ssl-images-amazon.com/images/I/61OyRO1zOrL._UX250_.jpg", author_id: 1
  Author.create first_name: "Giles", last_name: "Andreae", bio: "Giles Andreae is the award-winning and
  bestselling author of Rumble in the Jungle, The Lion Who Wanted to Love and keep Love in Your Heart,
  Little One. Giles is also the creator and voice behind Purple Ronnie. He lives in London.", photo_url:"https://images-na.ssl-images-amazon.com/images/I/31Ibn+XNwmL._UX250_.jpg", author_id: 2
  Author.create first_name: "Jennifer E.", last_name: "Morris", bio: "Jennifer is an author and illustrator
  of numerous books for children. She is the author of the Steve and Wessley Scholastic Reader series.
  She also wrote and illustrated, May I Please Have a Cookie? and Please Write Back! both featuring Alfie
  the Alligator. To learn more or download free activity and coloring pages that accompany Jennifer's books, visit www.jemorris.com",
  photo_url:"http://cps-static.rovicorp.com/3/JPG_400/MI0001/328/MI0001328712.jpg?partner=allrovi.com", author_id: 3
end
