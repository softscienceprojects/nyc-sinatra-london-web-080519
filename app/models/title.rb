class Title < ActiveRecord::Base
  # add relationships here
  has_many :figure_titles, foreign_key: 'title_id'
  has_many :figures, through: :figure_titles
end
