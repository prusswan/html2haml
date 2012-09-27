require "rubygems"
if ENV["COVERAGE"]
  require "simplecov"
  SimpleCov.start
end

require "bundler/setup"
require "minitest/autorun"
require "html2haml"
require 'html2haml/html'
require 'html2haml/html/erb'

require 'turn/autorun'
require 'debugger'

class MiniTest::Unit::TestCase
  def self.test_order
    :alpha
  end

  protected
  def render(text, options = {})
    Haml::HTML.new(text, options).render.rstrip
  end

  def render_erb(text)
    render(text, :erb => true)
  end
end
