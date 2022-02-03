class Admin::DashboardController < ApplicationController
  def show
    @products = Product.count
    @categories = Category.count
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end
end
