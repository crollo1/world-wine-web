
print "Creating regions..."

Region.destroy_all

r1 = Region.create!(

    name: 'Otago',
    country: 'New Zealand',
    image: '0020666_de-longs-wine-map-of-new-zealand-wine-regions_gramoi'

)

r2 = Region.create!(

    name: 'Alsace',
    country: 'France',
    image: 'alsace-wine-region-map_vf5tao'

)

r3 = Region.create!(

    name: 'Tuscany',
    country: 'Italy',
    image: 'tuscany-wine-regions-map_sugtqx'

)

r4 = Region.create!(

    name: 'Barossa Valley',
    country: 'Australia',
    image: 'b09309e2a36d2520e809b0812093dd64_ieu6xx'

)

r5 = Region.create!(

    name: 'Provence',
    country: 'France',
    image: 'provence.037fcce0_twdvzb'

)

r6 = Region.create!(

    name: 'Champagne',
    country: 'France',
    image: 'champagne-wine-region-map_wwdsua'

)

r7 = Region.create!(

    name: 'Mendoza',
    country: 'Argentina',
    image: 'mendoza-wine-map_qtnn8v'

)

r8 = Region.create!(

    name: 'Rheingau',
    country: 'Germany',
    image: '23b479c83d701b1494febf5c96db81e1_i61md1'

)

r9 = Region.create!(

    name: 'Piedmont',
    country: 'Italy',
    image: 'piedmont-wine-map-1024x714_vrm4v7'

)

puts "created #{ Region.count } regions."

#############################################################


print "Creating wines..."

Wine.destroy_all

w1 = Wine.create!(
    name: 'Craggy Range',
    style: 'Pinot Noir',
    vintage: 2020,
    image: '2018CraggyRangeArohaPinotNoir_8b9ea14c-4afe-4921-b174-db3f83311cf1_700x_xidd3f'
)

w2 = Wine.create!(
    name: 'Dopff Au Moulin',
    style: 'Gewurztraminer',
    vintage: 2019,
    image: '1-isabalms_uchsu1'
)

w3 = Wine.create!(
    name: "Barbera D’Asti Superiore Abbazia",
    style: 'Barbera',
    vintage: 2010,
    image: 'Abbazia-san-gaudenzio-mario-santero-barbera-asti-superiore-docg-1_ymgcey'
)

w4 = Wine.create!(
    name: 'Penfolds Bin 60A Coonawarra-Kalimna',
    style: 'Cabernet Shiraz',
    vintage: 1962,
    image: 'Penfolds-Bin-60A-1962_hvec2n'
)

w5 = Wine.create!(
    name: 'Bodvár No8 Organic',
    style: 'Rose',
    vintage: 2019,
    image: 'ScreenShot2022-06-09at4.22.48PM-67ea078af8654a75800d30b307215ca1_zyzwmp'
)

w6 = Wine.create!(
    name: 'Louis Roederer Cristal',
    style: 'Champagne',
    vintage: 2007,
    image: '1200px-ROEDERER_BOUTEILLE_2BCOFFRET_CRISTAL_BRUT_2007_750ML_V2_RVB_wy4fxh'
)

w7 = Wine.create!(
    name: 'El Enemigo',
    style: 'Malbec',
    vintage: 2012,
    image: 'el-enemigo-malbec-pack-of-1_ax8ver'
)

w8 = Wine.create!(
    name: 'Penfolds Grange',
    style: 'Shiraz',
    vintage: 1986,
    image: '980086x_nlmsfx'
)

w9 = Wine.create!(
    name: 'Querciabella',
    style: 'Chianti Classico',
    vintage: 2011,
    image: '10716979__83321.1645664771_bkutmr'
)

w10 = Wine.create!(
    name: 'Robert Weil',
    style: 'Reisling',
    vintage: 2018,
    image: 'MfE69ezGRKqAHpdiF3FnAw_pb_x960_jxnlbo'
)

puts "created #{ Wine.count } wines."

#########################################################

#create associations

r1.wines << w1
r2.wines << w2
r3.wines << w9
r4.wines << w4 << w8
r5.wines << w5
r6.wines << w6
r7.wines << w7
r8.wines << w10
r9.wines << w3

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

# add user --< review associations ###################

u1.reviews << rev1 << rev2
u2.reviews << rev3 << rev4
u3.reviews << rev5
