require 'test_helper'

class TeamPageTest < ActiveSupport::TestCase

  test "truth" do
    assert_kind_of Module, TeamPage
  end

  test 'setup block yields self' do
    TeamPage.setup do |config|
      assert_equal TeamPage, config
    end
  end

end
