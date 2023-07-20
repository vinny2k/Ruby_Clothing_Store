class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include AuthorizationHelper
  def savelist_text
    return @savelist_exists ? "Remove from save list" : "Add to save list"
  end
  helper_method :savelist_text 
  
  
  
  def hello
    render html: "hello, world!"
  end

end