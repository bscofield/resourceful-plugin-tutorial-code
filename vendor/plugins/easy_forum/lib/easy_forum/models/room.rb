module EasyForum
  module Models
    module Room
      def self.included(base)
        base.class_eval do
          has_many :discussions, :dependent => :destroy

          validates_presence_of :name
        end
      end
    end
  end
end