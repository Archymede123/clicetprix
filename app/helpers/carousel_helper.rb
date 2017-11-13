module CarouselHelper
  def carousel_for(images)
    Carousel.new(self, images).html
  end

  class Carousel
    attr_accessor :view, :images
    def initialize(view, images)
      @view, @images = view, images
    end

    def html
      # TO FILL IN
    end

    private


  end
end
