module Carpentry
  class PrototypesController < ApplicationController
    before_filter :before_carpentry,
      if: proc { respond_to?(:before_carpentry, true) }

    def serve
      env["carpentry.prototype"] = true
      render "carpentry/prototypes/#{params[:file_path]}"
    rescue ActionView::MissingTemplate
      if Rails.application.config.consider_all_requests_local
        raise
      else
        render file: "#{Rails.root}/public/404.html",
               status: 404,
               layout: false
      end
    end
  end
end
