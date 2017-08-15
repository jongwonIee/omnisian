puts "Inserting products data.."
File.read("db/seed_data/products.csv").split("\n").each do |line|
  data = line.strip.split(",")
  Product.create(
      id: data[0],
      name: data[1],
      title: data[2],
      content: data[3],
      username: data[4],
      index: data[5],
      category: data[6],
      reply_count: data[7],
      view_count: data[8],
      like_count: data[9],
      link: data[10]
  )
end