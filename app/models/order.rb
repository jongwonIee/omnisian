class Order < ApplicationRecord
  belongs_to :user

  serialize :target, Array

end
