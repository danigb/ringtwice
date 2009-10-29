require 'test_helper'

class MailTemplateTest < ActiveSupport::TestCase
  context "A moustache template" do
    setup { @template = MailTemplate.new(:body => 'Hello {{name}}', :processor => 'mustache') }

    should "render with string keys" do
      assert_equal "Hello world", @template.render('name' => 'world')
    end

    should "render with symbol keys" do
      assert_equal "Hello world", @template.render(:name => 'world')
    end
  end
end
