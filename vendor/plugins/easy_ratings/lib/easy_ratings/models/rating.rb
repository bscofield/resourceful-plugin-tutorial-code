module EasyRatings
  module Models
    module Rating
      def self.included(base)
        base.class_eval do
          belongs_to :rated, :polymorphic => true
          validates_presence_of :rated
          validates_presence_of :rating
          validates_inclusion_of :rating, :in => [-1, 1]
        end
      end
    end
  end
end