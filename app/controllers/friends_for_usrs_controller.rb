class FriendsForUsrsController < ApplicationController
  before_action :set_friends_for_usr, only: [:show, :edit, :update, :destroy]

  # GET /friends_for_usrs
  # GET /friends_for_usrs.json
  def index
    @friends_for_usrs = FriendsForUsr.all
  end

  # GET /friends_for_usrs/1
  # GET /friends_for_usrs/1.json
  def show
  end

  # GET /friends_for_usrs/new
  def new
    @friends_for_usr = FriendsForUsr.new
  end

  # GET /friends_for_usrs/1/edit
  def edit
  end

  # POST /friends_for_usrs
  # POST /friends_for_usrs.json
  def create
    @friends_for_usr = FriendsForUsr.new(friends_for_usr_params)

    respond_to do |format|
      if @friends_for_usr.save
        format.html { redirect_to @friends_for_usr, notice: 'Friends for usr was successfully created.' }
        format.json { render :show, status: :created, location: @friends_for_usr }
      else
        format.html { render :new }
        format.json { render json: @friends_for_usr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends_for_usrs/1
  # PATCH/PUT /friends_for_usrs/1.json
  def update
    respond_to do |format|
      if @friends_for_usr.update(friends_for_usr_params)
        format.html { redirect_to @friends_for_usr, notice: 'Friends for usr was successfully updated.' }
        format.json { render :show, status: :ok, location: @friends_for_usr }
      else
        format.html { render :edit }
        format.json { render json: @friends_for_usr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends_for_usrs/1
  # DELETE /friends_for_usrs/1.json
  def destroy
    @friends_for_usr.destroy
    respond_to do |format|
      format.html { redirect_to friends_for_usrs_url, notice: 'Friends for usr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends_for_usr
      @friends_for_usr = FriendsForUsr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friends_for_usr_params
      params.require(:friends_for_usr).permit(:friends)
    end
end
