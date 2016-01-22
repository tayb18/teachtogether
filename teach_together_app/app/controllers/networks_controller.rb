class NetworksController < ApplicationController
  def index
    @networks = Network.all
  end
  
  def new
    @network = Network.new
    @adminid = session[:user_id]
  end

  def create
    @network = Network.new(network_params)
    if @unitplan.save
      redirect_to @network
    else
      render :new
    end
  end

  def show
    @network = Network.find(params[:id])
  end

  private 
    def network_params
      params.require(:netowrk).permit(:network_name, :admin_id)
    end


end 