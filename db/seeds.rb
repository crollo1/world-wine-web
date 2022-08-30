
print "Creating regions..."

Region.destroy_all

r1 = Region.create!(

    name: 'Otago',
    country: 'New Zealand',
    image: 'https://www.hawkesbaynz.com/assets/Uploads/Craggy-Range-Giants-Winery.jpg'

)

r2 = Region.create!(

    name: 'Alsace',
    country: 'France',
    image: 'https://www.winetraveler.com/wp-content/uploads/2019/11/alsace-wine-route-itinerary-france-winetraveler.jpg'

)

r3 = Region.create!(

    name: 'Tuscany',
    country: 'Italy',
    image: 'https://www.walksofitaly.com/blog/wp-content/uploads/2013/10/Vineyeard-in-Chianti-Tuscany-Italy-famous-landscape.jpg'

)

r4 = Region.create!(

    name: 'Barossa Valley',
    country: 'Australia',
    image: 'https://content.api.news/v3/images/bin/e375306df500f3bc5f069ea0f2535f6e'

)

r5 = Region.create!(

    name: 'Provence',
    country: 'France',
    image: 'https://static.seetheworld.com/image_uploader/photos/25/original/chateau-de-berne-lorgues-lorgues.jpg'

)

r6 = Region.create!(

    name: 'Champagne',
    country: 'France',
    image: 'https://www.expatica.com/app/uploads/sites/5/2014/05/champagne-1920x1080.jpg'

)

r7 = Region.create!(

    name: 'Mendoza',
    country: 'Argentina',
    image: 'https://www.winetourism.com/files/2019/11/Mendoza-min.jpg'

)

r8 = Region.create!(

    name: 'Rheingau',
    country: 'Germany',
    image: 'https://assets.vivino.com/oVALCvbFLF4nTaJEg53FBuzB'

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
    description: 'Strong body, soft finish'
)

rev2 = Review.create!( 
    score: 91, 
    description: 'Delicate balance, all round pleasure'
)

rev3 = Review.create!( 
    score: 98,  
    description: 'Worth every cent, lives up to its name'
)

rev4 = Review.create!( 
    score: 67, 
    description: 'No structure, overpowering tannins'
)

rev5 = Review.create!( 
    score: 88, 
    description: 'Sign me up for more! A real pleaser for the price point'
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
