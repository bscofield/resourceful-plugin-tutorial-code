module EasyRatings
  module Controllers
    module RatingsController
      def create
        @rating = Rating.new(params[:rating])
        @rating.save
        respond_to do |format|
          format.js {
            render :text => @rating.rated.ratings.sum(:rating)
          }
        end
      end
    end
  end
end