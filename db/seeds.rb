
print "Creating regions..."

Region.destroy_all

r1 = Region.create!(

    name: 'Otago',
    country: 'New Zealand',
    image: 'https://www.wineware.co.uk/content/images/thumbs/0020666_de-longs-wine-map-of-new-zealand-wine-regions.jpeg'

)

r2 = Region.create!(

    name: 'Alsace',
    country: 'France',
    image: 'https://www.cellartours.com/wp-content/uploads/france/wine-maps/alsace-wine-region-map.jpg'

)

r3 = Region.create!(

    name: 'Tuscany',
    country: 'Italy',
    image: 'https://www.cellartours.com/wp-content/uploads/italy/wine-maps/tuscany-wine-regions-map.jpg'

)

r4 = Region.create!(

    name: 'Barossa Valley',
    country: 'Australia',
    image: 'https://i.pinimg.com/originals/b0/93/09/b09309e2a36d2520e809b0812093dd64.jpg'

)

r5 = Region.create!(

    name: 'Provence',
    country: 'France',
    image: 'https://images.rimontgowineries.com/build/maps/provence.037fcce0.jpg'

)

r6 = Region.create!(

    name: 'Champagne',
    country: 'France',
    image: 'https://www.cellartours.com/wp-content/uploads/france/wine-maps/champagne-wine-region-map.jpg'

)

r7 = Region.create!(

    name: 'Mendoza',
    country: 'Argentina',
    image: 'https://media.winefolly.com/mendoza-wine-map.jpg'

)

r8 = Region.create!(

    name: 'Rheingau',
    country: 'Germany',
    image: 'https://i.pinimg.com/originals/23/b4/79/23b479c83d701b1494febf5c96db81e1.jpg'

)

puts "created #{ Region.count } regions."

#############################################################


print "Creating wines..."

Wine.destroy_all

w1 = Wine.create!(
    name: 'Craggy Range',
    style: 'Pinot Noir',
    vintage: 2020,
    image: 'https://cdn.shopify.com/s/files/1/2572/9722/products/2018CraggyRangeArohaPinotNoir_8b9ea14c-4afe-4921-b174-db3f83311cf1_700x.png?v=1660690895'
)

w2 = Wine.create!(
    name: 'Dopff Au Moulin',
    style: 'Gewurztraminer',
    vintage: 2019,
    image: 'https://cdn.cluboenologique.com/wp-content/uploads/2021/07/12135416/1-isabalms.jpg'
)

w3 = Wine.create!(
    name: "Barbera D’Asti Superiore Abbazia",
    style: 'Barbera',
    vintage: 2010,
    image: 'https://cheapstore.al/soagroam/2021/09/Abbazia-san-gaudenzio-mario-santero-barbera-asti-superiore-docg-1.jpg'
)

w4 = Wine.create!(
    name: 'Penfolds Bin 60A Coonawarra-Kalimna',
    style: 'Cabernet Shiraz',
    vintage: 1962,
    image: 'https://quillandpad.com/wp-content/uploads/2021/03/Penfolds-Bin-60A-1962.jpg'
)

w5 = Wine.create!(
    name: 'Bodvár No8 Organic',
    style: 'Rose',
    vintage: 2019,
    image: 'https://www.liquor.com/thmb/iZJqaDswmAciBO71YoGfJd3wr0Q=/900x0/filters:no_upscale():max_bytes(150000):strip_icc()/ScreenShot2022-06-09at4.22.48PM-67ea078af8654a75800d30b307215ca1.png'
)

w6 = Wine.create!(
    name: 'Louis Roederer Cristal',
    style: 'Champagne',
    vintage: 2007,
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/ROEDERER_BOUTEILLE%2BCOFFRET_CRISTAL_BRUT_2007_750ML_V2_RVB.jpg/1200px-ROEDERER_BOUTEILLE%2BCOFFRET_CRISTAL_BRUT_2007_750ML_V2_RVB.jpg'
)

w7 = Wine.create!(
    name: 'El Enemigo',
    style: 'Malbec',
    vintage: 2012,
    image: 'https://latinafy.com/images/detailed/31/el-enemigo-malbec-pack-of-1.jpg'
)

w8 = Wine.create!(
    name: 'Penfolds Grange',
    style: 'Shiraz',
    vintage: 1986,
    image: 'https://cdn.klwines.com/images/skus/980086x.jpg'
)

w9 = Wine.create!(
    name: 'Querciabella',
    style: 'Chianti Classico',
    vintage: 2011,
    image: 'https://cdn11.bigcommerce.com/s-c8db7so1sf/images/stencil/1280x1280/products/1630/2240/10716979__83321.1645664771.jpg?c=1'
)

w10 = Wine.create!(
    name: 'Robert Weil',
    style: 'Reisling',
    vintage: 2018,
    image: 'https://cdn.luxe.digital/media/2020/07/06143751/best-wine-robert-weil-kiedrich-grafenberg-riesling-spatlese-luxe-digital%402x.jpg.webp'
)

puts "created #{ Wine.count } wines."

#########################################################

#create associations

r1.wines << w1
r2.wines << w2
r3.wines << w3 << w9
r4.wines << w4 << w8
r5.wines << w5
r6.wines << w6
r7.wines << w7
r8.wines << w10

############################################################

print "Creating reviews..."

Review.destroy_all

rev1 = Review.create!(
    score: 85, 
    description: "This wine is well-aged with rich notes of berries, plum, and spices. Due to a careful winemaking process, Abbazia Barbera d'Asti carries beautiful tannins, a ruby red color, and phenolic compounds. On the palate, this wine is velvety with light acidity and a persistent aftertaste."
)

rev2 = Review.create!( 
    score: 91, 
    description: 'The rosé has a pale pink dress, aromatic floraland citrus notes with a good acidity on the finish. Very pleasant for aperitifs and summer meals. The vines are grown on selected plots located around Brignoles. Bodvár N°8 is the  BIO alternative in our provence portfolio, a bit more attitude rosé with finesse, complexity. The rosé is ideal for gastronomy and/or sunny days together with friends.'
)

rev3 = Review.create!( 
    score: 98,  
    description: "An utterly superb wine, a glorious freak of nature and man; ethereal and beguiling, yet the palate is virtually endless, with a peacock's tale stolen from the very greatest of Burgundies; the fruit sweetness perfectly offset by acidity… The 100 point dry red? Why not! This is possibly the greatest red wine tasted in our times in Australia."
)

rev4 = Review.create!( 
    score: 67, 
    description: "Alejandro Vigil's El Enemigo wines are worth jumping on if you like full-bodied, robust Argentinean reds. This is typically smoky and dark up front, with molasses, marzipan and blackberry aromas. The palate clamps down with tannic grip, while flavors of oak, blackberry, tobacco, vanilla and spices end briary and with subtlety, which is what makes this powerful wine so good. Drink through 2019."
)

rev5 = Review.create!( 
    score: 88, 
    description: 'The most memorable wine was the 2020 Craggy Range Aroha Pinot Noir from their Te Muna vineyard in Martinborough. It was sensational! Intense, multi-faceted wine with a to-die-for texture. It certainly had the X-factor. I recall thinking that it was a candidate for a 100-point score but settled for an unwritten 99 points.'
)

puts "created #{ Review.count } reviews."

#######################################
#create associations

w3.reviews << rev1
w5.reviews << rev2
w4.reviews << rev3
w7.reviews << rev4
w1.reviews << rev5

############################################

print "Creating users... "

User.destroy_all

u1 = User.create! name: 'Ali', email: 'ali@ga.com', password: 'chicken'

u2 = User.create! name: 'Craig', email: 'craig@ga.com', password: 'chicken'

u3 = User.create! name: 'Frankie', email: 'frankie@ga.com', password: 'chicken'

u4 = User.create! name: 'Shay', email: 'shay@ga.com', password: 'chicken'

u5 = User.create! name: 'Luke', email: 'luke@ga.com', password: 'chicken'

puts "created #{ User.count } users" 

# add user --< wines associations ###################

u1.wines << w3 << w4 
u2.wines << w1 << w2
u3.wines << w5 << w8 << w9
u4.wines << w6 << w10
u5.wines << w7

puts "User #{u1.name} has wines: #{u1.wines.pluck(:name).join(', ') }"
puts "Wine '#{w10.name}' belongs to #{ w10.user.name }"

u1.reviews << rev1 << rev2
u2.reviews << rev3 << rev4
u3.reviews << rev5
