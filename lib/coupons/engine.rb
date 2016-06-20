module Coupons
  class Engine < Rails::Engine
    isolate_namespace Coupons

    initializer 'coupons.assets' do |app|
      app.config.assets.precompile += %w[coupons.css coupons.js]
    end

    initializer 'coupons.locale' do |app|
      app.config.i18n.load_path += Dir[File.expand_path('../../../config/locale/**/*.yml', __FILE__)]
    end
  end
end
