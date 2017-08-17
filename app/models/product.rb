class Product < ApplicationRecord
  belongs_to :order

  # for updating, downloading csv

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Product.create! row.to_hash
    end
  end

end
