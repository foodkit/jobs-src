# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# Helpers
# https://middlemanapp.com/basics/helper-methods/

# Build-specific configuration

configure :build do
  set :http_prefix, "/jobs/"
end
