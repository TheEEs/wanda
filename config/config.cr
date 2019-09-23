Wanda.configs do
  # use turbolink to make web navigation much faster
  bundled_with_turbolinks true

  # config sever port
  server_port 2509

  # list all js files that will be included in webpage by <script> tags
  include_js_files do |files|
    files << "bundle.js"
  end

  # uncomment the following line to disable crsf protection
  enable_csrf

  # setting when cache will be expired
  cache_expires_after 1.second

  # setting cache engine, support filesystem, memory, and redis for now
  cache_engine :memory # :file or :redis
end
