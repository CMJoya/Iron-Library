if Author.all.blank?
  Author.create first_name: "Frank", last_name: "Miller"
  Author.create first_name: "Allen", last_name: "Moore"
end

if Book.all.blank?
  Book.create title: "Batman No.1", photo_url: "http://5625-presscdn-22-81.pagely.netdna-cdn.com/wp-content/uploads/2011/01/expensive-batman-comics-batman-11.jpg", price: 20000
  Book.create title: "Kingdom Come", photo_url: "http://vignette3.wikia.nocookie.net/marvel_dc/images/6/6e/Kingdom_Come_1.jpg/revision/latest?cb=20080321202106", price: 10000
  Book.create title: "The Dark Knight Returns", photo_url: "https://nicfoley.files.wordpress.com/2014/05/1.jpg", price: 0
end
