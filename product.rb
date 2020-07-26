class Product

  attr_reader  :product_type, :options

  def intialize (product_type, options)
    @product_type = product_type
    @options = options
  end
end

class Tshirt < Product
  attr_reader :gender, :color, :size

  def initialize(gender, color, size)
    @product_type = 'tshirt'
    @options = { gender: gender, color: color, size: size}
    @gender = gender
    @color = color
    @size = size
  end
end

class Mug < Product
attr_reader :type

  def initialize(type)
    @product_type = 'Mug'
    @options = { type: type }
    @type = type
  end
end

class Sticker < Product
  attr_reader :size, :style

  def initialize(size, style)
    @product_type = 'sticker'
    @options = { size: size, style: style }
    @size = size
    @style = style
  end
end
