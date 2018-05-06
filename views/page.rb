require './views/base'

module Views
  class Page < Base
    needs page_title: nil

    NAV_ITEMS = [
      ['About', '/#about'],
      ['Menu', '/#menu'],
      ['Logo', '/'],
      ['Hours', '/#hours'],
      ['Contact', '/#contact'],
    ].freeze


    def content
      html do
        head do
          render_analytics
          link rel: 'shortcut icon', type: 'image/png', href: '/images/favicon-16x16.png', sizes: '16x16'
          link rel: 'shortcut icon', type: 'image/png', href: '/images/favicon-32x32.png', sizes: '32x32'
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
      div class: 'nav_container' do
        ul class: 'menu' do
          self.class::NAV_ITEMS.each do |name, link|
            case name
            when 'Logo'
              a href: '/' do
                img src: '/images/wursthall-logo-1.svg', class: 'logo'
              end
            when 'Menu'
              div class: 'dropdown' do
                li { a 'MENU', href: link }

                div class: 'dropdown-content' do
                  a 'MAIN', href: '/menu', class: 'nav_link'
                  a 'DRINKS', href: '/drinks', class: 'nav_link'
                  a 'LATE NIGHT', href: '/latenight', class: 'nav_link'
                  a 'KIDS', href: '/kids', class: 'nav_link'
                end
              end
            else
              li { a name.upcase, href: link, class: 'nav_link' }
            end
          end
        end
      end
    end

    def render_main
    end

    def render_footer
      div class: 'footer' do
        p do
          text "Wursthall 2018. All Rights Reserved"
          br
          text "310 Baldwin Ave., San Mateo, CA 94401 • 650-931-4282"
        end

        a href: 'https://www.facebook.com/wursthall/' do
          img src: '/images/icon-facebook-sml.svg', class: 'footer_icons'
        end

        a href: 'https://www.instagram.com/wursthall/' do
          img src: '/images/icon-instagram-sml.svg', class: 'footer_icons'
        end

        a href: 'https://twitter.com/wursthall/' do
          img src: '/images/icon-twitter-sml.svg', class: 'footer_icons'
        end
      end
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
