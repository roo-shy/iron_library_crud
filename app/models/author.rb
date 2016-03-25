class Author < ActiveRecord::Base
  has_many :books

  validates :full_name, :bio, presence: true


end
