require 'test_helper'

class DeliverTest < ActiveSupport::TestCase
  context "A deliver without context" do
    setup { @deliver = Deliver.new(MailTemplate.new(:body => 'Hello {{name}}', :processor => 'mustache')) }

    should "have the template parameters" do
      assert @deliver.parameters.include?(:name)
    end
  end

  context "A deliver with context" do
    setup do
      @deliver = Deliver.new(MailTemplate.new(:body => 'Hello {{name}}', :processor => 'mustache'),
        {:name => 'developer'})
    end

    should "render the context" do
      assert_equal "Hello developer", @deliver.render
    end
  end
end
