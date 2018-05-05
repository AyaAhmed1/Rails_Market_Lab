class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :category_id)
    end
end

