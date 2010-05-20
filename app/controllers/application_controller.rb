# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AuthenticatedSystem
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  layout :determine_layout

  def determine_layout
    if iphone_user_agent?
      return "mobile"
    end
    return "application"
  end
  
  
  def find_tags
    @tags = Project.tag_counts
  end
  
  def tag
    @projects = Project.find_tagged_with(params[:id])
    @tag = Tag.find_by_name(params[:id])
  end
  
end
