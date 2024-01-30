class ScrennPostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_screnn_post, only: %i[ show edit update destroy ]

  # GET /screnn_posts or /screnn_posts.json
  def index
    @screnn_posts = ScrennPost.all
  end

  # GET /screnn_posts/1 or /screnn_posts/1.json
  def show
  end

  # GET /screnn_posts/new
  def new
    @screnn_post = ScrennPost.new
  end

  # GET /screnn_posts/1/edit
  def edit
  end

  # POST /screnn_posts or /screnn_posts.json
  def create
    @screnn_post = ScrennPost.new(screnn_post_params)

    respond_to do |format|
      if @screnn_post.save
        format.html { redirect_to screnn_post_url(@screnn_post), notice: "Screnn post was successfully created." }
        format.json { render :show, status: :created, location: @screnn_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @screnn_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screnn_posts/1 or /screnn_posts/1.json
  def update
    respond_to do |format|
      if @screnn_post.update(screnn_post_params)
        format.html { redirect_to screnn_post_url(@screnn_post), notice: "Screnn post was successfully updated." }
        format.json { render :show, status: :ok, location: @screnn_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @screnn_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screnn_posts/1 or /screnn_posts/1.json
  def destroy
    @screnn_post.destroy

    respond_to do |format|
      format.html { redirect_to screnn_posts_url, notice: "Screnn post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screnn_post
      @screnn_post = ScrennPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def screnn_post_params
      params.require(:screnn_post).permit(:screen_id, :post_id)
    end
end
