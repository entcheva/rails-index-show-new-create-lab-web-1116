class CouponsController < ApplicationController

  def index
    # show all items
    @coupons = Coupon.all
  end

  def new
    # show new form
    @coupon = Coupon.new
  end

  def create
    # create an item
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

  def show
    # show item with :id
    @coupon = Coupon.find(params[:id])
  end

  def edit
    # show edit form for item with :id
  end

  def update
    # update item with :id
  end

  def delete
    # show delete form for item with :id
  end

  def destroy
    # delete item with :id
  end


end
