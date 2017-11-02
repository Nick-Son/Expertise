class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  def index
    @as_user_1 = Conversation.where(user1: current_user)
    @as_user_2 = Conversation.where(user2: current_user)

    @conversations = @as_user_1 | @as_user_2
  end

  def new
    @conversation = Conversation.new
  end 

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.user1 = current_user

    respond_to do |format|
      if @conversation.save
        format.html { redirect_to @conversation, notice: 'Conversation was successfully created.' }
        format.json { render :show, status: :created, location: @conversation }
      else
        format.html { render :new }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @conversation.update(conversation_params)
        format.html { redirect_to @conversation, notice: 'Conversation was successfully updated.' }
        format.json { render :show, status: :ok, location: @conversation }
      else
        format.html { render :edit }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @conversation.destroy
  end

  private
  
  # Set the conversation based on the current conversation ID
  def set_conversation
    @conversation = Conversation.find(params[:id])
  end

  # 
  def conversation_params
    params.require(:conversation).permit(:user2_id)
  end


end