class UnitPlansController < ApplicationController
  def index
    @unitplans = UnitPlan.all
  end

  def new
    @unitplan = UnitPlan.new
  end

  def create
    @unitplan = UnitPlan.new(params[:unit_plan])
    if @unitplan.save
      redirect_to @unitplan 
    else
      render :new
    end
  end

  def show
    @unitplan = UnitPlan.find(params[:id])
  end

end