# John Rexpearl Tumlos
# Class Exercise 03
# Class for Inventory Management:
# Design a Ruby class called Inventory to manage product inventory. Each product can be represented as an object with attributes like product_id, product_name, quantity_in_stock, and price. Implement methods to add products, update quantities, and calculate the total value of the inventory.

class Inventory
  attr_accessor :products

  def initialize
    @products = Array.new
  end

  def find_product(product_id)
    @products.each do | product |
      if product[:product_id] == product_id
        return product
      end
    end

    false
  end

  def add_product(product_id, product_name, quantity_in_stock, price)
    product = find_product(product_id)
    if product
      product[:quantity_in_stock] = quantity_in_stock
      product[:price] = price
      puts "Product #{product_name} has been updated."
    else
      new_product = {
        product_id: product_id,
        product_name: product_name,
        quantity_in_stock: quantity_in_stock,
        price: price
      }
      @products << new_product

      puts "Product \"#{product_name}\" with an id of #{product_id} has been added."
    end
  end

  def update_quantity(product_id, quantity)
    product = find_product(product_id)
    if product
      product[:quantity_in_stock] = quantity
    else
      "Product id: #{product_id} does not exist."
    end
  end

  def calculate_total_value
    total_value = 0
    @products.each do |product|
      total_value += product[:quantity_in_stock] * product[:price]
    end

    puts "Total inventory value: $#{total_value}"
  end

  def list_products
    puts "Product list."
    @products.each do |product|
      puts "Name: #{product[:product_name]} Quantity: #{product[:quantity_in_stock]} Price: $#{product[:price]}"
    end
  end

end

# Create an inventory
inventory = Inventory.new

# Add products to the inventory
inventory.add_product(1, "Widget", 100, 2.5)
inventory.add_product(2, "Gadget", 50, 5.0)

# Update the quantity of a product
inventory.update_quantity(1, 150)

# Calculate the total value of the inventory
inventory.calculate_total_value()

inventory.list_products
