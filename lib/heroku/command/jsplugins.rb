module Heroku::Command
  class JSPlugins < Base
    def index
      validate_arguments!
      Heroku::JSPlugin.setup
      Heroku::JSPlugin.plugins.each do |plugin|
        puts plugin
      end
    end

    def install
      plugin = shift_argument
      validate_arguments!
      Heroku::JSPlugin.setup
      Heroku::JSPlugin.install(plugin)
    end

    def version
      validate_arguments!
      Heroku::JSPlugin.setup
      puts Heroku::JSPlugin.version
    end
  end
end
