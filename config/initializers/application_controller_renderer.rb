# Be sure to restart your server when you modify this file.

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )
ActionController::Renderers.add :hal_json do |obj, options|
  self.content_type ||= Mime::HAL_JSON
  obj.to_json
end
