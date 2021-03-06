puts "Inserting user data.."
[
    [1, "admin@omnisian.com",'password']
].each do |x|
  User.create(id: x[0], email: x[1], password: x[2])
end

puts "Inserting order data.."
[
    [1, 1, 1, 1, 1, 1, "더뮤지션"]
].each do |x|
  Order.create(id: x[0], user_id: x[1], length: x[2], navercafe: x[3], dcinside: x[4], twitter: x[5], keyword: x[6])
end
#
# puts "Inserting products data.."
# File.read("db/seed_data/product.csv").split("\n").each do |line|
#   data = line.strip.split(",")
#   Product.create(
#       id: data[0],
#       order_id: data[1],
#       name: data[2],
#       date: data[3],
#       title: data[4],
#       content: data[5],
#       username: data[6],
#       index: data[7],
#       category: data[8],
#       reply_count: data[9],
#       like_count: data[10],
#       view_count: data[11],
#       link: data[12]
#   )
# end

puts "Inserting products data.."
File.read("db/seed_data/product.csv").split("\n").each do |line|
  data = line.strip.split(",")
  puts data[0]
  Product.create(
      id: data[0],
      order_id: data[1],
      name: data[2],
      date: data[3],
      content: data[4],
      username: data[5]
  )
end