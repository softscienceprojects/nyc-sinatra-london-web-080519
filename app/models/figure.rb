class Figure < ActiveRecord::Base
  # add relationships here
  has_many :landmarks
  has_many :figure_titles, foreign_key: 'figure_id'
  has_many :titles, through: :figure_titles 
end
