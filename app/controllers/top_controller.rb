class TopController < ReviewController

  def index 
    @products = Product.order('id ASC').limit(20)
  end

 def search
  @products = Product.where('title LIKE(?)',"%#{params[:keyword]}%").limit(20)
 end

 def entry 
  @product = Product.find(params[:id])
end

def post
  Review.create(create_params)
  redirect_to action: :index 
end

private

def create_params
  params.permit(:nickname, :rate, :review, :product_id)
end


end
