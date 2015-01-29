# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + "/../"))

Dir.glob(File.expand_path('vendor/bundle/jruby/*/gems/*/lib')).each{|path|
  $LOAD_PATH << path unless $LOAD_PATH.include? path
}

require 'app/app'
