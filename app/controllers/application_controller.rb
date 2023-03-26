class ApplicationController < ActionController::Base
  def search
    if params[:search].blank?
      redirect_to applications_path and return
    else
      @parameter = params[:search].downcase
      @results = Application.all.where("lower(title) LIKE :search", search: "%#{@parameter}%")
    end
  end

  def after_sign_out_path_for scope
    root_path
  end
end
