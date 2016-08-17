class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

  def create
    @data = {coupon_code: params[:coupon_code], store: params[:store]}
    @new = Coupon.create(@data)

    redirect_to coupon_path(@new)
  end
end