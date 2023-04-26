class UserAppsController < ApplicationController
  before_action :set_user_app, only: %i[ show edit update destroy ]

  # GET /user_apps or /user_apps.json
  def index
    @user_apps = UserApp.all
  end

  # GET /user_apps/1 or /user_apps/1.json
  def show
  end

  # GET /user_apps/new
  def new
    @user_app = UserApp.new
  end

  # GET /user_apps/1/edit
  def edit
  end

  # POST /user_apps or /user_apps.json
  def create
    @user_app = UserApp.new(user_app_params)

    respond_to do |format|
      if @user_app.save
        format.html { redirect_to user_app_url(@user_app), notice: "User app was successfully created." }
        format.json { render :show, status: :created, location: @user_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_apps/1 or /user_apps/1.json
  def update
    respond_to do |format|
      if @user_app.update(user_app_params)
        format.html { redirect_to user_app_url(@user_app), notice: "User app was successfully updated." }
        format.json { render :show, status: :ok, location: @user_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_apps/1 or /user_apps/1.json
  def destroy
    @user_app.destroy

    respond_to do |format|
      format.html { redirect_to user_apps_url, notice: "User app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_app
      @user_app = UserApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_app_params
      params.require(:user_app).permit(:title, :author, :rd, :ca, :cs, :img, :size, :app_type)
    end
end
