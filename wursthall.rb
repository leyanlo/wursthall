PRODUCTION = ENV['RACK_ENV'] == 'production'

require 'net/http'
require 'roda'
require 'fortitude'
require './.env'

FOLDERS = %w[views]

FOLDERS.each do |folder|
  Dir["./#{folder}/**/*.rb" ].each { |file| require file }
end

unless PRODUCTION
  require 'better_errors'
end

class Wursthall < Roda
  use Rack::Session::Cookie, key: '_App_session', secret: ENV['SECRET']

  plugin :default_headers, {
    'Content-Type' => 'text/html',
    'X-Frame-Options' => 'sameorigin',
    'X-Content-Type-Options' => 'nosniff',
    'X-XSS-Protection' => '1; mode=block',
    'Cache-Control' => 'no-store',
  }

  plugin :render, engine: 'rb'
  plugin :assets, css: 'main.css'
  plugin :csrf
  plugin :cookies
  plugin :status_handler
  plugin :halt
  plugin :path
  plugin :flash

  unless PRODUCTION
    opts[:root] = Dir.pwd
    plugin :static, %w[/fonts /images], root: 'public/assets/'
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
    compile_assets
  end

  status_handler 403 do
    'You are forbidden from seeing that!'
  end

  status_handler 404 do
    "Uh oh, there doesn't seem to be anything here."
  end

  route do |r|
    r.assets unless ENV['RACK_ENV'] == 'production'

    r.root do
      render('index')
    end

    r.is 'menu' do
      render('menu')
    end
  end
end
