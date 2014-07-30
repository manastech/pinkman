require "frank"

Frank.config do |config|
  config.ssl = SSLContext.new.tap do |ssl_ctx|
    ssl_ctx.certificate_chain = "server.pem"
    ssl_ctx.private_key = "server.key"
  end
  config.port = 8443
end

