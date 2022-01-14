ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

  #テストユーザーがログイン中の場合trueを返す
  def is_logged_in?
    !session[:user_id].nil?
  end
end
