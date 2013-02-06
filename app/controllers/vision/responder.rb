class Vision::Responder < ActionController::Responder
  include Responders::FlashResponder
  include Responders::HttpCacheResponder
end