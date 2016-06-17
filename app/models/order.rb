class Order < ActiveRecord::Base
  belongs_to :product
  after_create :update_products

  def update_products
    product.update(total: (product.total - total))
  end
end
