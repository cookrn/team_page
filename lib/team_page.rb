# Requires
require "active_support/core_ext/module/attribute_accessors"

module TeamPage

  # Our host application root path
  # We set this when the engine is initialized
  mattr_accessor :app_root

  # Yield self on setup for nice config blocks
  def self.setup
    yield self
  end

end

# Require our engine
require "team_page/engine"
