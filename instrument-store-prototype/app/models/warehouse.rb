class Warehouse < ActiveRecord::Base
  has_many :stock
end