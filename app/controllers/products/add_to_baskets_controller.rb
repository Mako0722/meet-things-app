class Products::AddToBasketsController < Products::ApplicationController
  def create
    basket = current_user.basket || current_user.create_basket
  end
end