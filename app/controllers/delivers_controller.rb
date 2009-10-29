class DeliversController < ApplicationController

  def show
    mail_template = MailTemplate.find(params[:mail_template_id])
    @deliver = Deliver.new(mail_template)
  end

  def new
    mail_template = MailTemplate.find(params[:mail_template_id])
    @deliver = Deliver.new(mail_template)
  end

  def create
    mail_template = MailTemplate.find(params[:template_id])
    @deliver = Deliver.new(mail_template, params[:template])
    if params[:options][:test_only]
      render :action => :show
    end
  end
end
