class LineItem < ActiveRecord::Base
  #attr_accessible :cart_id, :product_id, :product, :quantity
  attr_accessible :cart_id, :product_id, :quantity, :order_id, :product, :cart
  belongs_to :product
  belongs_to :cart
  belongs_to :order

  def total_price
    product.price * quantity
  end

end
