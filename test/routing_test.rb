require 'test_helper'

class DefaultRoutingTest < ActionController::TestCase

  test 'map public team page' do
    assert_routing( { :path => "team" , :method => :get } , { :controller => 'team_page/team_members' , :action => 'index' } )
  end

end

