# create categories
#
%w(food entertainment sports tech lifestyle).each do |category_name|
  Category.create(name: category_name)
end

#create destinations

20.times.each do
  destination = Destination.create(
    maximum_product_price: rand(10000).to_d
  )
  destination.categories = Category.all.sample(2)
  destination.save
end

10.times { Reference.create(ref_code: SecureRandom.hex, destination: Destination.all.sample) }