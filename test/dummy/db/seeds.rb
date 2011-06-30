## DATA SEED
#
# => Method 1
# Copy the code into your application's db/seeds.rb file.
#
# => Method 2
# If you would like to run this code in the engine that you are
# developing, place it in the seeds file inside of the dummy app
# contained in your integration tests.
#
# With either of the above methods, be sure to run the following from
# your command line...
#
#     rake db:seed
#

5.times do |i|

  TeamPage::TeamMember.create!( {
    :name        => "Team Member #{i}",
    :twitter_url => "http://twitter.com/team_member_#{i}",
    :bio         => "A really fancy team member!",
    :image_url   => "http://bit.ly/muSWki"
  } )

end
