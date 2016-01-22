class UnitPlansController < ApplicationController
  def index
    @unitplans = UnitPlan.where user_id: session[:user_id]
  end
 
  def new
    @unitplan = UnitPlan.new
    @userid = session[:user_id]
  end

  def create
    @unitplan = UnitPlan.new(unitplan_params)
    if @unitplan.save
      redirect_to @unitplan 
    else
      render :new
    end
  end

  def show
    @unitplan = UnitPlan.find(params[:id])
  end

  def print
    @unitplan = UnitPlan.find(params[:id])
    render layout: false
  end

  private 
    def unitplan_params
      params.require(:unit_plan).permit(:title, :user_id, :document_url, :created_at, :updated_at, :user_id, :document_url, :is_public?, :network_id, :author, :grade, :subject, :start, :ends, :description, :big_idea, :essential_question, :standard, :swbat, :formal_assessment, :informal_assessment, :key_vocabulary, :material)
    end

end 