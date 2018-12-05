require_relative '../config/environment.rb'


# Artist
art1 = Artist.new('Kevin',3)
art2 = Artist.new('Jarrian',10)
art3 = Artist.new('Eric',5)
art4 = Artist.new('Julian',1)
art5 = Artist.new('Michelle',0)
# gallery
# (name, city)
gal1 = Gallery.new('Dumbo Gallery','Brooklyn')
gal2 = Gallery.new('Bronx Gallery','Bronx')
gal3 = Gallery.new('Harlem Gallery', 'Harlem')
gal4 = Gallery.new('Queens Gallery','Queens')
gal5 = Gallery.new('Mex Gallery','San Fran')
gal6 = Gallery.new('Dumbo Gallery','Brooklyn')
# paintings
# title, price, gallery, artist)
paint1 = Painting.new('Mona Lisa', 10000, gal1, art5)
paint2 = Painting.new('French Girl', 5, gal2, art4)
paint3 = Painting.new('Night', 920, gal3, art1)
paint4 = Painting.new('Cabin Fever', 7500, gal4, art2)
paint5 = Painting.new('Family Jules', 500, gal5, art3)
paint6 = Painting.new('Night 2', 400, gal3, art1)



binding.pry

puts "Bob Ross rules."
