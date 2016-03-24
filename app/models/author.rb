class Author < ActiveRecord::Base
  has_many :books

  validates :full_name, :bio, :photo_url, presence: true


end
