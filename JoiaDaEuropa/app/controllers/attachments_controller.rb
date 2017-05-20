class AttachmentsController < ApplicationController
  def index
  end

  def new
    @attachment = Attachment.new(params[:attachments])
  end

  def show
    @id = params[:id]
    @attachment = Attachment.find(@id)
  end
end
