class MessagesController < ApplicationController
  def create
    @due_diligence = DueDiligence.find(params[:due_diligence_id])
    @npl = @due_diligence.npl
    content = params[:message]['content']
    @message = Message.new(user: current_user, due_diligence: @due_diligence, content: content)
    @message.save
    if @message.user == @npl.user
      redirect_to npl_due_diligence_path(@npl, @due_diligence)
    else
      redirect_to edit_npl_due_diligence_path(@npl, @due_diligence)
    end
  end
end
