require_dependency "porthole_rails/application_controller"

module PortholeRails
  class ProxyController < ApplicationController
    respond_to :html
    layout     nil

    def index; end
  end
end
