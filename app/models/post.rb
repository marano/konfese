class Post < ActiveRecord::Base
  validates_presence_of :body
  default_scope :order => 'created_at DESC'
end
