engiene_obj =   if Rails::VERSION::STRING.to_f > 3.0
                  PortholeRails::Engine
                else
                  Rails.application
                end

engiene_obj.routes.draw do
  scope '/porthole', :as => 'porthole' do
    resources :proxy, only: :index, controller: 'PortholeRails::Proxy'
  end

  scope '/assets', :as => 'assets' do
    get 'javascripts/porthole_rails/proxy.js',    controller: 'PortholeRails::Javascripts', action: 'proxy'
    get 'javascripts/porthole_rails/porthole.js', controller: 'PortholeRails::Javascripts', action: 'porthole'
  end unless PortholeRails.assets_enabled?
end
