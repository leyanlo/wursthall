require './views/base'

module Views
  class Page < Base
    needs page_title: nil

    def content
      html do
        head do
          render_analytics
          link rel: 'shortcut icon', type: 'image/png', href: '/images/favicon.ico'
          rawtext assets(:css)
          render_head
          meta name: 'viewport', content: 'width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0'
          meta name: 'apple-mobile-web-app-capable', content: 'yes'
          meta charset: 'UTF-8'
        end

        div(class: 'flash') { text flash[:flash] } if flash[:flash]

        render_nav
        render_main
        render_footer
        render_js
      end
    end

    def render_head
      if page_title
        title "#{page_title} | Wursthall"
      else
        title 'Wursthall | Restaurant & Bierhaus'
        meta name: 'description', content: 'Wursthall is a restaurant and bierhall by James Beard award winning 
        chef J. Kenji López-Alt in Downtown San Mateo. Our German and Austrian inspired menu features wursts, 
        bratkartoffeln (crispy fried potatoes), interesting sandwiches, and more. Join us for an outing with 
        some colleagues, a drink with an old friend, or a family night out for dinner.'
      end
    end

    def render_analytics
      script async: true, src: 'https://www.googletagmanager.com/gtag/js?id=UA-115560943-1'

      script <<~JS
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-115560943-1');
      JS
    end
    static :render_analytics

    def render_nav
    end

    def render_main
    end

    def render_footer
    end

    def render_js
      script <<~JS
        var els = document.getElementsByClassName("flash");

        if (els.length > 0) {
          var el = els[0];
          setTimeout(function () { el.style.display = 'none' }, 3000);
        }
      JS
    end

  end
end
