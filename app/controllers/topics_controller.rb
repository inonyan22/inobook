class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only:[:edit, :update, :destroy, :show]
  def index
    @topics = Topic.all
  end

  def  new
    if params[:back]
      @topic = Topic.new(topic_params)
    else
      @topic = Topic.new
    end
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id
      if @topic.save
      redirect_to topics_path, notice: "投稿しました！"
      else
        render 'new'
      end
  end


  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to topics_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def show
    @comment = @topic.comments.build
    @comments = @topic.comments
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice: "削除しました！"
  end

  def confirm
    @topic = Topic.new(topic_params)
    render :new if @topic.invalid?
  end

 private
  def topic_params
    params.require(:topic).permit(:title, :content, :image_url, :image_url_cache)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
