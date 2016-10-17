module Carpentry
  class PrototypesController < ApplicationController
    if respond_to?(:before_action)
      before_action :before_carpentry,
        if: proc { respond_to?(:before_carpentry, true) }
    else
      before_filter :before_carpentry,
        if: proc { respond_to?(:before_carpentry, true) }
    end

    def serve
      request.env["carpentry.prototype"] = true
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
