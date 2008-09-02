class Comment < ActiveRecord::Base
  include EasyForum::Models::Comment
  acts_as_tree
  belongs_to :room
  named_scope :top, {:conditions => "parent_id IS NULL"}
  
  
  has_many :ratings, :as => :rated
end
