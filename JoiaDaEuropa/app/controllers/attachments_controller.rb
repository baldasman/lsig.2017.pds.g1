class AttachmentsController < ApplicationController
  def index
  end

  def new
    @attachment = Attachment.new(params[:@attachment])
    if @attachment.save
      redirect_to :action => :show, :id => @attachment.id
    end
  end

  def show
    @id = params[:id]
    @attachment = Attachment.find(@id)
  end
end
