class API::BaseController < ActionController::Base
  include Response
  include ExceptionHandler
end