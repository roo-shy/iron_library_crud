class Book < ActiveRecord::Base
belongs_to :author
has_many :order_items

validates :title, :author_id, :price, presence: true
validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/

attachment :book_image

end
