class Room < ActiveRecord::Base
  include EasyForum::Models::Room
  
  has_many :comments, :dependent => :destroy
end
