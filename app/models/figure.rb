class Figure < ActiveRecord::Base
  # add relationships here
  has_many :title
  has_many :landmark
end
