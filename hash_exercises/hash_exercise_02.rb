# John Rexpearl Tumlos
# Hash Exercise #02
# Sales Data Merge
#
# You have two hashes representing sales data from two different sources. Each hash contains sales data for the same products, but the keys may not match exactly. Write a Ruby program that merges the two sales data hashes into a single hash, combining the sales data for each product.
# Here are the two sales data hashes:
sales_data1 = {
  "product_A" => 100,
  "product_B" => 200,
  "product_C" => 150
}

sales_data2 = {
  "product_B" => 300,
  "product_C" => 250,
  "product_D" => 50
}
# Your program should produce a merged hash that combines the sales data for all products from both sources. In case a product appears in both hashes, add the sales quantities together. If a product appears in only one hash, include it in the merged hash with its respective sales quantity.
# The merged hash for the given example should be:
# {
#   "product_A" => 100,
#   "product_B" => 500,
#   "product_C" => 400,
#   "product_D" => 50
# }

def sales_merge(data1, data2)
  data2.each do | key, value |
    if data1.include?(key)
      data1[key] += value
    else
      data1[key] = value
    end
  end

  return data1
end

print sales_merge(sales_data1, sales_data2)


