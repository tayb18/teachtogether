 class AnyonesController < ApplicationController
  def index
    @unitplans = UnitPlan.where is_public?: true
  end

  def show
  end
end