# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



require 'faker'
Order.destroy_all
Shirt.destroy_all
User.destroy_all
user_almir = User.new(email:'almir@gmail.com', encrypted_password:123456, password:123456)
user_almir.save!


  male_shirt =  Shirt.new(team: "Real Madrid", gender:'Masculino' , size:'G', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  male_shirt.user = user_almir
  file= URI.open("https://a-static.mlcdn.com.br/800x560/camisa-real-madrid-home-20-21-s-n-torcedor-adidas-masculina/netshoes/nqq-3199-014-05/b72862454cb7d761138124bdbf5a9c92.jpeg")
  male_shirt.photo.attach(io: file, filename: "camisa.png", content_type:"image/png")
  male_shirt.save!  


  
  female_shirt = Shirt.new(team: " AC Milan", gender:'Feminino' , size:'M', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  female_shirt.user = user_almir
  file= URI.open("https://cdn.dooca.store/5789/products/mgflxnhcsqiivnmcyebsjs5ggvfwhbldk3q3_450x600+fill_ffffff.png?v=1674754039&webp=0")
  female_shirt.photo.attach(io: file, filename: "camisa.png", content_type:"image/png")
  female_shirt.save! 



  male_shirt =  Shirt.new(team: "Corinthians", gender:'Masculino' , size:'G', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  male_shirt.user = user_almir
  file= URI.open("https://static.kapiva.com.br/public/kapiva/imagens/produtos/camisa-nike-corinthians-ii-torcedor-2023-24-preto-branco-64fb5e0320b68.png")
  male_shirt.photo.attach(io: file, filename: "camisa.png", content_type:"image/png")
  male_shirt.save!

  female_shirt = Shirt.new(team: "Paris Saint-German", gender:'Feminino' , size:'M', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  female_shirt.user = user_almir
  file= URI.open("https://images.tcdn.com.br/img/img_prod/754539/camisa_paris_saint_germain_21_22_azul_655_1_0dd70a5e7a718eb102085ff28124dbe2.jpg")
  female_shirt.photo.attach(io: file, filename: "camisa.png", content_type:"image/png")
  female_shirt.save!


  male_shirt =  Shirt.new(team: "São Paulo", gender:'Masculino' , size:'G', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  male_shirt.user = user_almir
  file= URI.open("https://images.tcdn.com.br/img/img_prod/390900/camisa_sao_paulo_stencil_8717_1_eb2de78296f7ac7dcdf9cf5079654524.png")
  male_shirt.photo.attach(io: file, filename: "camisa.png", content_type:"image/png")
  male_shirt.save!

  male_shirt =  Shirt.new(team: "Bayern Munchen", gender:'Masculino' , size:'G', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  male_shirt.user = user_almir
  file= URI.open("https://static.netshoes.com.br/produtos/camisa-bayern-de-munique-juvenil-home-2021-sn-torcedor-adidas/56/NQQ-4342-056/NQQ-4342-056_zoom1.jpg?ts=1691184853")
  male_shirt.photo.attach(io: file, filename: "camisa.png", content_type:"image/png")
  male_shirt.save!