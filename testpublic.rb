require 'json'
require_relative 'product.rb'

def getItem
  file = File.read('products.json')
  products = JSON.parse(file)
  products.each do |product|
    Product.getNewProduct(product['product_type'], product['options'])
  end
  puts 'Welcome to PublicTee! Which type of item are you looking for today?'
  puts "Ex: 'mug', 'tshirt male red', 'sticker',  etc."
  selection = gets.chomp
  options = selection.split(' ')
  puts "You have chosen #{selection}! Here's what we found:"
  product_type = options[0]
  if product_type == 'tshirt'
    getShirtOptions(options)
  elsif product_type == 'mug'
    getMugOptions(options)
  elsif product_type == 'sticker'
    getStickerOptions(options)
  else
    puts "Nothing, because this item doesn't exist! Please enter a valid selection."
    getItem
  end
  puts 'Thank you and have a nice day :)'
end

def getShirtOptions(options)
  #map through all tshirt options
  genders = Tshirt.all.map(&:gender).uniq
  colors = Tshirt.all.map(&:color).uniq
  sizes = Tshirt.all.map(&:size).uniq
  #split user selection subcategories into gender, color, size
  selectedGender = options[1]
  selectedColor = options[2]
  selectedSize = options[3]
  if selectedGender.nil? && selectedColor.nil? && selectedSize.nil?
    puts "Genders: #{genders.join(', ')}"
    puts "Colors: #{colors.join(', ')}"
    puts "Sizes: #{sizes.join(', ')}"
  elsif genders.include?(selectedGender) && colors.include?(selectedColor) && sizes.include?(selectedSize)
    puts "It looks like there are no other options available."
  elsif genders.include?(selectedGender) && selectedColor.nil? && selectedSize.nil?
    puts "Colors: #{colors.join(', ')}"
    puts "Sizes: #{sizes.join(', ')}"
  elsif colors.include?(selectedColor) && selectedGender.nil? && selectedSize.nil?
    puts "Genders: #{genders.join(', ')}"
    puts "Sizes: #{sizes.join(', ')}"
  elsif sizes.include?(selectedSize) && selectedGender.nil? && selectedColor.nil?
    puts "Genders: #{genders.join(', ')}"
    puts "Colors: #{colors.join(', ')}"
  elsif genders.include?(selectedGender) && colors.include?(selectedColor) && selectedSize.nil?
    puts "Sizes: #{sizes.join(', ')}"
  elsif colors.include?(selectedColor) && sizes.include?(selectedSize) && selectedGender.nil?
    puts "Genders: #{genders.join(', ')}"
  elsif genders.include?(selectedGender) && sizes.include?(selectedSize) && selectedColor.nil?
    puts "Colors: #{colors.join(', ')}"
  else
    puts "Tshirt options not found! Please try again :("
    getItem
  end
end

def getMugOptions(options)
  types = Mug.all.map(&:type).uniq
  selectedType = options[1]
  if selectedType.nil?
    puts "Type: #{types.join(', ')}"
  elsif types.include?(selectedType)
    puts "It looks like there are no other options available."
  else
    puts "Mug options not found! Please try again :("
    getItem
  end
end

def getStickerOptions(options)
  sizes = Sticker.all.map(&:size).uniq
  styles = Sticker.all.map(&:style).uniq
  selectedSize = options[1]
  selectedStyle = options[2]
  if selectedSize.nil? && selectedStyle.nil?
    puts "Sizes: #{sizes.join(', ')}"
    puts "Styles: #{styles.join(', ')}"
  elsif sizes.include?(selectedSize) && selectedStyle.nil?
    puts "Styles: #{styles.join(', ')}"
  elsif styles.include?(selectedStyle) && selectedSize.nil?
    puts "Sizes: #{sizes.join(', ')}"
  else
    puts "Sticker options not found! Please try again :("
    getItem
  end
end

getItem
