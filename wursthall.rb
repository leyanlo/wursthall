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
    plugin :static, %w[/fonts /images], root: 'public/'
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
  end

  compile_assets

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

    r.is 'latenight' do
      render('late_night')
    end

    r.is 'kids' do
      render('kids')
    end

    r.is 'drinks' do
      render('drinks')
    end

    r.on 'event' do
      r.post do
        send_mail(
          name: r['name'],
          email: r['email'],
          phone: r['phone'],
          company: r['company'],
          partysize: r['partysize'],
          eventdate: r['eventdate'],
          starttime: r['starttime'],
          endtime: r['endtime'],
          description: r['description'],
        )
        flash[:flash] = 'Thank you! Your message has been sent.'
        r.redirect '/'
      end
    end
  end

  def send_mail(params)
    return if params.all? { |_, v| v.to_s == '' }

    uri = URI.parse('https://api.sparkpost.com/api/v1/transmissions')
    req = Net::HTTP::Post.new(uri)
    req.content_type = 'application/json'
    req['Authorization'] = ENV['SPARK_POST_KEY']
    req.body = JSON.dump(
      'content' => {
        'from' => 'no-reply@wursthall.com',
        'subject' => "Event Submission #{Time.now}",
        'html' => Views::Email.new(**params).to_html,
      },
      'recipients' => [
        { address: 'info@wursthall.com' }
      ]
    )

    Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
      http.request(req)
    end
  end
end
