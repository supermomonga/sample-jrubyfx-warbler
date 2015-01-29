class ApplicationController
  include JRubyFX::Controller
  def self.set_view(name)
    if JRubyFX::Application.in_jar?
      appdir = ENV['GEM_HOME'].split('/')[-2]
      fxml "#{appdir}/app/views/#{name}.fxml"
    else
      fxml "views/#{name}.fxml"
    end
  end
end
