class Story < ActiveRecord::Base
  validates :title, presence: true
  validates :writer, presence: true
  validates :preview, presence: true
  validates :url, presence: true, uniqueness: true

end
