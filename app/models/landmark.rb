class Landmark < ActiveRecord::Base
  # add relationships here
  has_many :title
  has_many :figure
end
