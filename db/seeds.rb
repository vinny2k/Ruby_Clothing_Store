# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(title: 'Men')       #1
Category.create(title: 'Women')     #2
Category.create(title: 'Children')  #3

Product.create(title: 'Button Up Shirt', description: "A button up style shirt with long sleeves", price: 20, rating: 5)
Product.create(title: 'Hooded Jumper', description: "A hooded jumper with basic design", price: 55, rating: 5)
Product.create(title: 'Jeans', description: "Jeans with basic design", price: 38, rating: 5)
Product.create(title: 'Shorts', description: "Shorts with basic design", price: 15, rating: 5)
Product.create(title: 'Skinny Jeans', description: "Skinny jeans with a basic design", price: 35, rating: 5)
Product.create(title: 'Sports Shorts', description: "Sport shorts made for women", price: 12, rating: 5)
Product.create(title: 'T Shirt', description: "A T-shirt with basic design", price: 15, rating: 5)
Product.create(title: 'Beanie', description: "A beanie made for comfort", price: 8, rating: 5)
Product.create(title: 'Socks', description: "A comfortable pair of socks", price: 5, rating: 5)
Product.create(title: 'Track Pants', description: "A comfortable pair of track pants", price: 25, rating: 5)
Product.create(title: 'Chino Shorts', description: "A comfortable pair of chino shorts", price: 15, rating: 5)
Product.create(title: 'Chino', description: "A comfortable pair of chinos", price: 35, rating: 5)
Product.create(title: 'Slim Chino', description: "A slim pair of chinos", price: 35, rating: 5)
Product.create(title: 'Sweater', description: "A sweater with basic design", price: 45, rating: 5)
Product.create(title: 'Knitted Sweater', description: "A comfortable knitted sweater with basic design", price: 45, rating: 5)

#adding to men's category
ProductCategory.create(product_id: '1', category_id: '1')
ProductCategory.create(product_id: '2', category_id: '1')
ProductCategory.create(product_id: '3', category_id: '1')
ProductCategory.create(product_id: '4', category_id: '1')
ProductCategory.create(product_id: '7', category_id: '1')
ProductCategory.create(product_id: '8', category_id: '1')
ProductCategory.create(product_id: '9', category_id: '1')
ProductCategory.create(product_id: '10', category_id: '1')
ProductCategory.create(product_id: '11', category_id: '1')
ProductCategory.create(product_id: '12', category_id: '1')
ProductCategory.create(product_id: '13', category_id: '1')
ProductCategory.create(product_id: '14', category_id: '1')
ProductCategory.create(product_id: '15', category_id: '1')

#adding to women's category
ProductCategory.create(product_id: '2', category_id: '2')
ProductCategory.create(product_id: '3', category_id: '2')
ProductCategory.create(product_id: '4', category_id: '2')
ProductCategory.create(product_id: '5', category_id: '2')
ProductCategory.create(product_id: '6', category_id: '2')
ProductCategory.create(product_id: '7', category_id: '2')
ProductCategory.create(product_id: '8', category_id: '2')
ProductCategory.create(product_id: '9', category_id: '2')
ProductCategory.create(product_id: '14', category_id: '2')
ProductCategory.create(product_id: '15', category_id: '2')
#adding to children's category
ProductCategory.create(product_id: '1', category_id: '3')
ProductCategory.create(product_id: '2', category_id: '3')
ProductCategory.create(product_id: '3', category_id: '3')
ProductCategory.create(product_id: '4', category_id: '3')
ProductCategory.create(product_id: '7', category_id: '3')
ProductCategory.create(product_id: '8', category_id: '3')
ProductCategory.create(product_id: '9', category_id: '3')
ProductCategory.create(product_id: '10', category_id: '3')
ProductCategory.create(product_id: '14', category_id: '3')
ProductCategory.create(product_id: '15', category_id: '3')