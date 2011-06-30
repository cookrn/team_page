module TeamPage
  class TeamMember < ActiveRecord::Base
    attr_accessible :name , :twitter_url , :bio , :image_url
  end
end
