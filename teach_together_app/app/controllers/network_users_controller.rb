class NetworkUsersController < ApplicationController

  def create
    @net_user = NetworkUser.create(net_user_params)

    redirect_to @forum
  end

  private
    def net_user_params
      params.require(:network_user).permit(:network_id, :user_id)
    end

end