class Agency::DashboardController < ApplicationController
  def index
    render plan: "Agency Dashboard (subdomain: #{request.subdomain})"
  end
end
