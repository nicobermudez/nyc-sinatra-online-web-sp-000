class Figure < ActiveRecord::Base
  # add relationships here
  has_many :figure_titles
  has_many :landmark
  has_many :titles, through: :figure_titles
end
