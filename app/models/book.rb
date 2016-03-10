class Book < ActiveRecord::Base
belongs_to :author

validates :title, :author_id, :price, :photo_url, presence: true
validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/


end
