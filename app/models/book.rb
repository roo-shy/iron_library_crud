class Book < ActiveRecord::Base
  class Book < ActiveRecord::Base
  belongs_to :author

  validates :title, :author, :price, :photo_url, presence: true
end
