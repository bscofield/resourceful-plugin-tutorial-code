module EasyForum
  module Models
    module Comment
      def self.included(base)
        base.class_eval do
          belongs_to :discussion

          validates_presence_of :poster
          validates_presence_of :content
        end
      end
    end
  end
end