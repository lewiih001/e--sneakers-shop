puts "delete old data.."
# Categpry.destroy_all
# Product.destroy_all
# Order.destroy_all
# User.destroy_all
# OrderItem.destroy_all

puts "creating categories..."
category1 = Category.create(name: "Canvas Sneakers")
category2 = Category.create(name: "Plimsoll Sneaker")
category3 = Category.create(name: "Slip On Sneakers")
category4 = Category.create(name: "Retro Sneakers")
category5 = Category.create(name: "Hiking Sneakers")

puts "creating user..."
user1 = User.create(username: 'Dennis', email: "denis@gmail.com")

puts "creating products ...."
product1 = Product.create(name: "TM", price: 3000, image_url: "https://i.pinimg.com/564x/e0/5c/01/e05c014611d95628506ed8233a763598.jpg", description: "The Purple Air Force 1 features synthetic leather and an Air-Sole unit like the original for classic comfort. Different Swoosh designs let you swap out the accent to match your mood", released_year: 2019, category_id:category1.id, user_id: user1.id )
product2 = Product.create(name: "Jordan", price: 3500, image_url: "https://i.pinimg.com/564x/ed/71/cf/ed71cf385d2d59c84f5599e2f541857b.jpg", description: "We have respect for the Air Jordan IV, being an iconic shoe when it was released and still delivering, in terms of appearance.", released_year: 2019, category_id:category1.id, user_id: user1.id )
product3 = Product.create(name: "HeadSneakers", price: 4000, image_url: "https://i.pinimg.com/564x/c7/0a/5a/c70a5acb16ae301fafc8dd8d46cc691e.jpg", description: "is the best reps sneakers store, we offer the best Jordan 4 reps, it means we provide the replica 1:1 high end quality fake shoes with cheap. There are a lot of amazing selections of classic styles", released_year: 2019, category_id:category1.id, user_id: user1.id )
product4 = Product.create(name: "Nike", price: 4800, image_url: "https://i.pinimg.com/564x/a8/c6/4c/a8c64c3b6cf3180aac3e31d271735b61.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product5 = Product.create(name: "Lopez", price: 4800, image_url: "https://i.pinimg.com/564x/44/94/59/4494590e591d7a6f8b65e3ff445e12a2.jpg", description: "A story about the lopez brothers and their lives (not real lives) ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product6 = Product.create(name: "Air", price: 4800, image_url: "https://i.pinimg.com/564x/e7/75/c1/e775c1f1195bd2695a4e3432cb067c4e.jpg", description: "All made by yours truly 💙 For regular imagines of little mix be sure to check out my book ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product7 = Product.create(name: "Nike", price: 5000, image_url: "https://i.pinimg.com/564x/30/04/11/3004112b01baaaf940620d1df7c7c745.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product8 = Product.create(name: "Air JOrdan", price: 6800, image_url: "https://i.pinimg.com/564x/9a/05/15/9a0515a938ad0d9bb1b2426be2349a94.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product9 = Product.create(name: "Air JOrdan", price: 6500, image_url: "https://i.pinimg.com/564x/11/ea/50/11ea50f3a7ead68377061fc52a58d920.jpg", description: "some colorways are just too nice to remain a shitty photoshop render.", released_year: 2019, category_id:category1.id, user_id: user1.id )
product10 = Product.create(name: "Lion Kicks", price: 7800, image_url: "https://i.pinimg.com/564x/e6/86/d1/e686d10275deefd85fb7b2bc2af63575.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product11 = Product.create(name: "WMNS", price: 9900, image_url: "https://i.pinimg.com/564x/a0/30/d6/a030d6a75e0c29d1dc4380fa997a9831.jpg", description: "As its name suggests, the Women’s Air Jordan 1 “Twist” isn't all that far off from the original black and white colorway released in 1985", released_year: 2019, category_id:category1.id, user_id: user1.id )
product12 = Product.create(name: "Nike", price: 10000, image_url: "https://i.pinimg.com/564x/7d/92/da/7d92dac157c7740d26ca43d887e88041.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product13 = Product.create(name: "Ciness", price: 7900, image_url: "https://i.pinimg.com/564x/7a/e4/89/7ae4896f74eeff7ae8089b4c23be4c53.jpg", description: "Brand Name: CINESSDUpper Material: flockOrigin: CN(Origin)Heel ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product14 = Product.create(name: "Darling", price: 5900, image_url: "https://i.pinimg.com/564x/a6/a5/cc/a6a5cc69f92b05a0acf9d17e47e6f3ea.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product15 = Product.create(name: "Air Mesh", price: 6500, image_url: "https://i.pinimg.com/564x/0a/85/62/0a856259f1c834d489a6761fb56ff7b4.jpg", description: "SPECIFICATIONSUpper Material: Mesh (Air mesh)Season", released_year: 2019, category_id:category1.id, user_id: user1.id )
product16 = Product.create(name: "Microfiber", price: 7900, image_url: "https://i.pinimg.com/564x/15/40/f9/1540f93dc084f85482fbee9cb976a535.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product17 = Product.create(name: "Bata", price: 3800, image_url: "https://i.pinimg.com/564x/38/68/ad/3868ad2567ce2eaa3fa0c0f381db16b2.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product18 = Product.create(name: "Boss", price: 4500, image_url: "https://i.pinimg.com/564x/fc/8e/60/fc8e6098f053cdeadb6dc4db334112eb.jpg", description: "During summer, picking the right footwear becomes extremely importan ", released_year: 2019, category_id:category1.id, user_id: user1.id )
product19 = Product.create(name: "Breathable Doug", price: 3000, image_url: "https://i.pinimg.com/564x/79/f3/22/79f322e875abb88ac9c4a2bcc40cfab2.jpg", description: "pring breathable doug men loafers casual shoes increased within flats the British fashion lace up male", released_year: 2017, category_id:category1.id, user_id: user1.id )
product20 = Product.create(name: "Puma", price: 7500, image_url: "https://i.pinimg.com/564x/7a/9c/38/7a9c38b7ed87b0e83c72534692d0c578.jpg", description: "Black and rose red Nike airs force 1s mid top without the strap they look absolutely beautiful. ", released_year: 2019, category_id:category1.id, user_id: user1.id )


puts "creating orders...."
order1 = Order.create(user_id: user1.id)

puts "creating ordered items..."
order_item1 = OrderedItem.create(order_id: order1.id, product_id: product2.id, item_quantity: 34)

puts "✅ Done seeding!"
