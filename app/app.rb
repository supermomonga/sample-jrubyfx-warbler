# encoding: utf-8

require 'java'
require 'jrubyfx'

require 'app/controllers/application'
require 'app/controllers/main_window'

def jar_filename
  $LOAD_PATH.map{|it|
    it.split('/')
  }.flatten.uniq.select{|it|
    it.match /\.jar!$/
  }.reject{|it|
    ['jruby-complete.jar!'].include? it
  }.first.tap{|it| break it.tr('!','') unless it.nil?}
end

fxml_root File.dirname(__FILE__), jar_filename

class App < JRubyFX::Application
  def start(stage)
    with(stage, fxml: MainWindowController , title: '便利').show
  end
end

App.launch

