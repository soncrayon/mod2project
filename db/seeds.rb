# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker' 

OutfitItem.destroy_all
Item.destroy_all
Outfit.destroy_all
Category.destroy_all
Style.destroy_all
User.destroy_all

5.times do 
    User.create(first_name:Faker::Name.male_first_name, last_name:Faker::Name.last_name, age:rand(18..55), bio:Faker::Quote.yoda)
end 

Category.create(name:'tops')
Category.create(name:'bottoms')
Category.create(name:'shoes')
Category.create(name:'accessories')
Category.create(name:'suits')

Style.create(name:'business')
Style.create(name:'casual')
Style.create(name:'athletic')
Style.create(name:'formal')

Item.create(name:'air max',category:Category.all.third,style:Style.all.third)
Item.create(name:'sneaker',category:Category.all.third,style:Style.all.third)
Item.create(name:'canvas shoe',category:Category.all.third,style:Style.all.second)
Item.create(name:'running shoe',category:Category.all.third,style:Style.all.third)

Item.create(name:'poplin button down',category:Category.all.first,style:Style.all.first)
Item.create(name:'floral shirt',category:Category.all.first,style:Style.all.second)
Item.create(name:'oxford shirt',category:Category.all.first,style:Style.all.second)
Item.create(name:'dress shirt',category:Category.all.first,style:Style.all.fourth)

Item.create(name:'joggers',category:Category.all.second,style:Style.all.third)
Item.create(name:'dark-wash jeans',category:Category.all.second,style:Style.all.second)
Item.create(name:'chinos',category:Category.all.second,style:Style.all.second)
Item.create(name:'seersucker pants',category:Category.all.second,style:Style.all.second)

Item.create(name:'sunglasses',category:Category.all.fourth,style:Style.all.second)
Item.create(name:'beanie',category:Category.all.fourth,style:Style.all.third)
Item.create(name:'t-shirt',category:Category.all.first,style:Style.all.second)
Item.create(name:'tuxedo',category:Category.all.fifth,style:Style.all.fourth)
Item.create(name:'brogues',category:Category.all.third,style:Style.all.fourth)

Item.all.each{|i|i.update(brand:Faker::Company.name)}

Outfit.create(name:'going out', user:User.first).items.push(Item.fifth, Item.third)
Outfit.create(name:'with friends', user:User.first).items.push(Item.second, Item.second)
Outfit.create(name:'dinner', user:User.second).items.push(Item.second, Item.second)
Outfit.create(name:'on campus', user:User.second).items.push(Item.fifth, Item.third)
Outfit.create(name:'brunch', user:User.third).items.push(Item.second, Item.second)
Outfit.create(name:'gym', user:User.third).items.push(Item.fifth, Item.third)
Outfit.create(name:'friend wedding', user:User.fourth).items.push(Item.second, Item.second)
Outfit.create(name:'mall outfit', user:User.fourth).items.push(Item.fifth, Item.third)
Outfit.create(name:'shopping', user:User.fifth).items.push(Item.second, Item.second)
Outfit.create(name:'playing basketball', user:User.fifth).items.push(Item.fifth, Item.third)

