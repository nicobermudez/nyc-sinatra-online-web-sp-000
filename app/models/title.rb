class Title < ActiveRecord::Base
  # add relationships here
  has_many :figure
  has_many :landmark
end
