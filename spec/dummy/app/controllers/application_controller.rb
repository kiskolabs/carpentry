class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def before_carpentry
    @notes = "BEFORE CARPENTRY"
  end
end
