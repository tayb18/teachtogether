class InvitationsController < ApplicationController
  def create
    @invitation = Invitation.create(invitation_params)
    @network = Network.find(params[:id])
    @sort_invitees = @network.member_emails.split(',')
    @invitees = @sort_invitees.where(:member_emails)
  end

  private
    def invitation_params
      params.require(:cohort).permit(:user_id, :network_id, :invitor_id, :responded_to?)
    end


end