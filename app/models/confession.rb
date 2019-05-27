class Confession < ApplicationRecord
  validates :text, :title, presence: true, length: {in: 2..65, }
end
