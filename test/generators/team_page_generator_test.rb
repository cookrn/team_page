require 'test_helper'
require "rails/generators/test_case"
require File.join(File.dirname(__FILE__), "../../lib/generators/team_page/team_page_generator")

class TeamPageGeneratorTest < Rails::Generators::TestCase
  tests TeamPageGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator
    assert_migration "db/migrate/create_team_members_table.rb"
  end
end

