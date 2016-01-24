class NetworksController < ApplicationController
   
  def new
    if session[:user_id]
      @network = Network.new
      @adminid = session[:user_id]
    else
      redirect_to '/'
    end
  end

  def create
    @network = Network.create(network_params)
    @adminid = User.find(session[:user_id])
    @network.users.push(@adminid)
    @network.save()
    
    # @members = params[:member_emails].split(',')

    # @members.each do |member|
    #   NetworkMailer.network_email(member).deliver_now
    # end
    redirect_to @network
  end

  def show
    if session[:user_id]
      @network = Network.find(params[:id])
      @members = @network.users
      @unitplans = @network.unit_plans      
      @forums = @network.forums
      @lessonplans = @network.lesson_plans
    else
      redirect_to '/'
    end
  end

  private 
    def network_params
      params.require(:network).permit(:network_name, :admin_id)
    end


end 