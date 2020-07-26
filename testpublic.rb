require 'json'
require_relative 'product.rb'

# def getProducts
  # file = File.read('products.json')
  # products = JSON.parse(file)
  # products= JSON.load(file)
  # file.close

  # products each do |product|
  #   Product.getProducts(products['product_type'], products['options'])
  # end
# end

def getItem
  file = File.read('products.json')
  products = JSON.parse(file)
  puts 'Welcome to PublicTee! Which type of item are you looking for today?'
  puts "Ex: 'Tshirt', 'Tshirt Male', 'Sticker',  etc."
  selection = gets.chomp
  options = selection.split(' ')
  # puts products
  # getProducts
  puts  'Thank you for your selection!'
  # puts "You have chosen #{options}"
  puts "Here are your item's options:"
  # if(products.key?(:options))
  #   puts options
  # # puts options
  # else
  #   puts 'Please enter a valid item!'
  # end
end

# def findOptions(selection)
#   if selection == 'tshirt'
#
# end

getItem
# findOptions
