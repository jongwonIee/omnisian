puts "Inserting products data.."
File.read("db/seed_data/products.csv").split("\n").each do |line|
  data = line.strip.split(",")
  Product.create(
      id: data[0],
      name: data[1],
      date: data[2],
      title: data[3],
      content: data[4],
      username: data[5],
      index: data[6],
      category: data[7],
      reply_count: data[8],
      view_count: data[9],
      like_count: data[10],
      link: data[11]
  )
end