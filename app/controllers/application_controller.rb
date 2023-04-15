class ApplicationController < ActionController::Base
  def after_sign_out_path_for scope
    root_path
  end

  def search
    if params[:search].blank? 
      redirect_to root_path and return
    else
      @param = params[:search].downcase
      @results = Application.all.where("lower(title) LIKE :search", search: "%#{@param}%")
    end
  end

end
