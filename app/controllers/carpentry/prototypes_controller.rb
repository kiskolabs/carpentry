module Carpentry
  class PrototypesController < ApplicationController
    before_filter :before_carpentry,
      :if => proc { respond_to?(:before_carpentry, true) }

    def serve
      env["carpentry.prototype"] = true
      render "carpentry/prototypes/#{params[:file_path]}"
    end
  end
end
