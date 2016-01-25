class LessonPlansController < ApplicationController
  def index
    @lessonplans = LessonPlan.where user_id: session[:user_id]
  end

  def new
    @lessonplan = LessonPlan.new
    @userid     = session[:user_id]
    @getauthor  = User.find(@userid)
    @author     = @getauthor.first_name + " " + @getauthor.last_name
    @networkid  = request.query_parameters["networkid"]
  end

  def create
    @lessonplan = LessonPlan.new(lessonplan_params)
    if @lessonplan.save
      redirect_to @lessonplan
    else
      render :new
    end 
  end

  def show
    @lessonplan = LessonPlan.find(params[:id])
  end

  def print
    @lessonplan = LessonPlan.find(params[:id])
    render layout: false
  end

  private 
    def lessonplan_params
      params.require(:lesson_plan).permit(:title, :user_id, :document_url, :created_at, :updated_at, :document_url, :is_public?, :network_id, :author, :grade, :subject, :date_and_time, :essential_question, :standard, :objective, :assessment, :vocabulary, :introduction, :learning_plan, :closing_summary, :material)
    end

end