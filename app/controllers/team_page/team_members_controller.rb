module TeamPage
  class TeamMembersController < ::ApplicationController
    def index
      @team_members = TeamPage::TeamMember.all
    end
  end
end
