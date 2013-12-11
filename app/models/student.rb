class Student < ActiveRecord::Base
  attr_accessible :name, :house_id
  belongs_to :house
end