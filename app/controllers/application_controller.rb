class ApplicationController < ActionController::Base
  set_current_tenant_through_filter

  before_action :find_agency_by_subdomain

  def find_agency_by_subdomain
    if request.subdomain.present? && request.subdomain != "www"
      agency = Agency.find_by(subdomain: request.subdomain)
      set_current_tenant(@agency)
    end
  end  
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
