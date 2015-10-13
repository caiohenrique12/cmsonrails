class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_usuario!

  respond_to :html, :json
  responders :flash

  def show
    @usuario = Usuario.find(params[:id])
    unless @usuario == current_usuario
      redirect_to :back, :alert => "Access denied."
    end
  end

  def require_authentication
    unless usuario_signed_in?
      redirect_to new_usuario_sessions_path, alert: t('flash.alert.needs_login')
    end
  end

  def require_no_authentication
    if usuario_signed_in?
      redirect_to root_path, notice: t('flash.notice.already_logged_in')
    end
  end

end
