require './views/base'

module Views
  class Page < Base
    needs page_title: nil

    def content
      html do
        head do
          #link rel: 'shortcut icon', type: 'image/png', href: '/images/favicon.ico'
          #link rel: 'stylesheet', href: 'https://fonts.googleapis.com/css?family=Inconsolata:400,700|Raleway:400,700'
          #script src: 'https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'
          rawtext assets :css
          render_head
          render_analytics
          meta name: 'viewport', content: 'width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0'
          meta name: 'apple-mobile-web-app-capable', content: 'yes'
          meta charset: 'UTF-8'
        end

        render_nav
        render_main
        render_footer
      end
    end

    def render_head
      if page_title
        title "#{page_title} | Wursthall"
      else
        title 'Wursthall | Restaurant & Bierhaus'
        meta name: 'description', content: 'Coming Soon - Wursthall: a German/Austrian-style bierhall by Kenji López-Alt in Dowtown San Mateo'
      end
    end

    def render_analytics
      #script <<~JS
      #  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      #  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      #  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      #  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      #  ga('create', 'UA-90466781-1', 'auto');
      #  ga('send', 'pageview');
      #JS
    end
    static :render_analytics

    def render_nav
    end

    def render_main
    end

    def render_footer
    end

  end
end
