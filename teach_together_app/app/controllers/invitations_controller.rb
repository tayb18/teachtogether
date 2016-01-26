class InvitationsController < ApplicationController
  def create
    @invitation = Invitation.create(invitation_params)
    @network = Network.find(params[:id])
    @sorted_invitees = @network.member_emails.split(',')
    @invitees = @sorted_invitees.where(:member_emails === User(params[:email]))
    @invitees.each do |invite|

    end
  end

  private
    def invitation_params
      params.require(:cohort).permit(:user_id, :network_id, :invitor_id, :responded_to?)
    end
    # <%= form_for @invitation, url: {action: 'create'} do |f| %>

    #   <%= f.hidden_field(:invitor_id, :value => @adminid) %>
    #   <%= f.hidden_field(:network_id, :value => @networkid) %>
    #   <%= f.hidden_field(:user_id, :value => @userid) %>

    # <% end %>


end