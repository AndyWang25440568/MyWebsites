class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  def new
    @comment = Comment.new
    #@item = Item.find(params[:id])
    #@comment.item = @item
    ##@item.comments <= @comment
    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @comment }
    #  format.js
    #end
  end
  def edit
    @comment = Comment.find(params[:id])
  end
  def create
    #@comment = Comment.new(params[:comment])
    p params
    @item = Item.find_by_id(params[:comment][:item_id])
    p @item

    #@item.comments <=comment
    respond_to do |format|
      if @item.comments.create(params[:comment])
        format.html { redirect_to @item, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    #@item.comments.delete(comment)
    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end

  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end
end
