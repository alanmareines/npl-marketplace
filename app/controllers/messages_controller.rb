class MessagesController < ApplicationController
  def create
    @dd = DueDiligence.find(params[:due_diligence_id])
    @npl = @dd.npl
    content = params[:message]['content']
    @message = Message.new(user: current_user, due_diligence: @dd, content: content)
    @message.save
    if @message.user == @npl.user
      respond_to do |format|
        format.html { redirect_to npl_due_diligence_path(@npl, @dd) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to edit_npl_due_diligence_path(@npl, @dd) }
        format.js
      end
    end
  end
end
