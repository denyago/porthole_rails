require "porthole_rails/engine"

module PortholeRails
  def self.assets_enabled?
    Rails.application.config.assets.enabled rescue false
  end
  def self.root
    File.expand_path '../..', __FILE__
  end
end
