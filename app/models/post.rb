class Post < ActiveRecord::Base
  normalize_attributes :author_id
  has_many :comments, dependent: :destroy
  belongs_to :author, :class_name  => 'User'

end
