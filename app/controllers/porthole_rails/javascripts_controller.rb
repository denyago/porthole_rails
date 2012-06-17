require_dependency "porthole_rails/application_controller"

module PortholeRails
  class JavascriptsController < ApplicationController
    def porthole
      send_file path_for_js('porthole'), type: 'application/javascript'
    end
    def proxy
      send_file path_for_js('proxy'),    type: 'application/javascript'
    end

    private

    def path_for_js(js_name)
      ::File.join( PortholeRails.root, 'app','assets','javascripts','porthole_rails', "#{js_name}.js")
    end
  end
end
