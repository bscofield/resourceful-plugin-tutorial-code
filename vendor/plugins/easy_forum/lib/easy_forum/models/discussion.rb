module EasyForum
  module Models
    module Discussion
      def self.included(base)
        base.class_eval do
          has_many :comments, :dependent => :destroy
          belongs_to :room

          validates_presence_of :poster
          validates_presence_of :name
          validates_presence_of :content
        end
      end
    end
  end
end