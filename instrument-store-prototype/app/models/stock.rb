class Stock < ActiveRecord::Base
  belongs_to :instrument
  belongs_to :warehouse
end