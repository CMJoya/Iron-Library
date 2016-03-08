if Author.all.blank?
fm = Author.create first_name: "Frank", last_name: "Miller", bio:"Frank Miller (born January 27, 1957)[1] is an American writer, artist, and film director best known for his dark comic book stories and graphic novels such as Ronin, Daredevil: Born Again, The Dark Knight Returns, Sin City and 300. He also directed the film version of The Spirit, shared directing duties with Robert Rodriguez on Sin City and Sin City: A Dame to Kill For, and produced the film 300. His film Sin City earned a Palme d'Or nomination, and he has received every major comic book industry award. In 2015, Miller was inducted into the Eisner Awards Comic Book Hall of Fame.He created the comic book characters Elektra for Marvel Comics' Daredevil series, and the future version of the Robin character, Carrie Kelly, for DC Comics."
am = Author.create first_name: "Alan", last_name: "Moore", bio: "Alan Moore (born 18 November 1953) is an English writer primarily known for his work in comic books including Watchmen, V for Vendetta, and From Hell.[1] Frequently described as the best graphic novel writer in history,[2][3] he has been called one of the most important British writers of the last fifty years.[4] He has occasionally used such pseudonyms as Curt Vile, Jill de Ray, Translucia Baboon and The Original Writer."

end

if Book.all.blank?
  Book.create author_id: fm.id, title: "Batman No.1", photo_url: "http://5625-presscdn-22-81.pagely.netdna-cdn.com/wp-content/uploads/2011/01/expensive-batman-comics-batman-11.jpg", price: 20000
  Book.create author_id: fm.id, title: "Kingdom Come", photo_url: "http://vignette3.wikia.nocookie.net/marvel_dc/images/6/6e/Kingdom_Come_1.jpg/revision/latest?cb=20080321202106", price: 10000
  Book.create author_id: am.id, title: "The Dark Knight Returns", photo_url: "https://nicfoley.files.wordpress.com/2014/05/1.jpg", price: 0
end
