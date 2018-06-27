class ProductsController < InheritedResources::Base
before_action :authenticate_user!,only: [:fav]

def fav
current_user.products << Product.find(params[:id])     
        
end  

def show
  @product= Product.find(params[:id])
  @users= Product.find(params[:id]).users  

end  
  private

    def product_params
      params.require(:product).permit(:name, :category_id)
    end



end