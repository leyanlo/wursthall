require './views/page'

module Views
  class Index < Page
    NAV_ITEMS = [
      ['About', '#about'],
      ['Menu', '#menu'],
      ['Logo', '/'],
      ['Hours', '#hours'],
      ['Contact', '#contact'],
    ].freeze

    def render_nav
      div class: 'nav_container' do
        ul class: 'menu' do
          NAV_ITEMS.each do |name, link|
            case name
            when 'Logo'
              a href: '/' do
                img src: '/images/wursthall-logo-1.svg', class: 'logo'
              end
            when 'Menu'
              div class: 'dropdown' do
                li { a 'MENU', href: '#menu' }

                div class: 'dropdown-content' do
                  a 'MAIN', href: '/images/wursthall_main.pdf', class: 'nav_link'
                  a 'DRINKS', href: '/images/wh_menu_drinks.pdf', class: 'nav_link'
                  a 'LATE NIGHT', href: '/images/wursthall_latenight.pdf', class: 'nav_link'
                  a 'KIDS', href: '/images/wursthall_kidsmenu.pdf', class: 'nav_link'
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
      render_first_section
      render_second_section
      render_third_section
      render_fourth_section
    end

    def render_first_section
      div class: 'first_section' do
        img src: '/images/icon-wursthall.svg', class: 'big_image'
      end
    end

    def render_second_section
      a name: 'about' do
        div class: 'second_section' do
          div class: 'second_section_content' do
            div class: 'second_section_left' do

              img src: '/images/big_stamp.png', class: 'big_stamp'

              h2 "ABOUT US"

              p do
                text "Wursthall is a restaurant and bierhaus located in downtown San Mateo.
                We aim to bring the festivity and community of the German beer hall to the Bay Area,
                and hope to create a gathering space for friends and families."
                br
                br
                text "San Mateo natives, Adam Simpson and Tyson Mao, have partnered with James Beard award winning
                chef Kenji López-Alt to deliver a German and Austrian inspired menu for your enjoyment.
                Our menu features wursts, bratkartoffeln (crispy fried potatoes), interesting sandwiches, and more.
                We are proud to partner with Anne and Robert Moser of Backhaus Bakery for our pretzels and buns."
                br
                br
                text "Our taps feature 28 beers from Germany and Belgium, as well as local craft brews.
                We also have a selection of California wines."
                br
                br
                text "Whether it’s an outing with some colleagues, a drink with an old friend,
                or a family night out for dinner, we hope you come and enjoy our contribution to downtown San Mateo.
                If you see us around, don’t hesitate to say hello!"
              end


              img src: '/images/small_stamp.png', class: 'small_stamp'
            end

            div class: 'second_section_right' do
              img src: '/images/aboutus-imgs.jpg', class: 'aboutus_image'
            end
          end
        end
      end
    end

    def render_third_section
      a name: 'menu' do
      div class: 'third_section' do
        div class: 'third_section_content' do
          h2 "MENU"

          p do
            text "Gather with family and friends at Wursthall and enjoy Chef J. Kenji López-Alt's modern take of
                  German cuisine. Enjoy our in-house creations, including pickles, mustards, and sauerkraut, and
                  pretzels and breads from San Mateo's own Backhaus. The beer list is curated to give you a taste
                  of German, Belgian, and American beer styles (in the correct glassware, of course) while ciders,
                  wines, and other beverages give everyone a glass to raise. Our passionate staff can help you
                  select the perfect beverage to go with any dish or occasion."
            br
            br
            text "Explore the menus to decide what you have to try first,
                  and we hope you will return to experience everything Wursthall has to offer!"
          end

          div class: 'third_section_menu' do
            div class: 'third_section_menu_col' do

              div class: 'menu_main' do
                a 'MAIN', href: '/images/wursthall_main.pdf'
              end

              div class: 'menu_drinks' do
                a 'DRINKS', href: '/images/wh_menu_drinks.pdf'
              end

            end

            div class: 'third_section_menu_col' do

              div class: 'menu_latenight' do
                a 'LATE NIGHT', href: '/images/wursthall_latenight.pdf'
              end

              div class: 'menu_kids' do
                a 'KIDS', href: '/images/wursthall_kidsmenu.pdf'
              end

            end
          end
        end
      end
    end
  end

    def render_fourth_section
      div class: 'fourth_section' do
        div class: 'fourth_section_content' do

          a name: 'contact' do
            div class: 'fourth_section_content_left' do
              h2 "CONTACT US"
              p 'Have a question or a comment? Let us know how we can help.'

              render_form
            end
          end

          a name: 'hours' do
            div class: 'fourth_section_content_right' do
              div class: 'fourth_section_content_right_hour' do
                h3 'HOURS & LOCATION'
                hr
                h4 'EVERYDAY'
                br

                div class: 'service_hour1' do
                  p do
                    text 'Lunch'
                    br
                    text 'Dinner'
                  end
                end

                div class: 'service_hour2' do
                  p do
                    text 'TBA'
                    br
                    text '5:00 PM - 12:00 AM'

                  end

                end
              end

              div class: 'fourth_section_content_right_map' do
                render_map
              end
            end
          end
        end
      end
    end

    def render_form
      form action: 'event', method: 'post' do
        rawtext csrf_tag
        input type: 'text', name: 'name', placeholder: 'NAME', class: 'form_1line'
        br
        input type: 'text', name: 'email', placeholder: 'E-MAIL', class: 'form_1line'
        br
        input type: 'text', name: 'phone', placeholder: 'PHONE', class: 'form_1line'
        br
        input type: 'text', name: 'company', placeholder: 'COMPANY', class: 'form_2line'
        input type: 'text', name: 'partysize', placeholder: 'PARTY SIZE', class: 'form_2line'
        br
        input type: 'text', name: 'eventdate', placeholder: 'EVENT DATE', class: 'form_1line'
        br
        input type: 'text', name: 'starttime', placeholder: 'START TIME', class: 'form_2line'
        input type: 'text', name: 'endtime', placeholder: 'END TIME', class: 'form_2line'
        br
        textarea type: 'textarea', name: 'description', placeholder: 'TELL US ABOUT YOUR EVENT...', class: 'form_textarea'
        br
        button type: 'submit', class: 'submitbutton' do
          text "SUBMIT"
        end
      end
    end

    def render_map
      iframe width: "100%", height:"259", frameborder:"0", style:"border:0", scrolling: "no", src: "https://www.google.com/maps/embed/v1/place?q=310%20Baldwin%20ave.%2C%20San%20Mateo%2C%20CA%2094401&key=AIzaSyD8Lt6KLOwOoruU-AO70HsZ8a4t_9zqmPY", class: 'map'
    end



    def render_footer
      div class: 'footer' do
        p do
          text "Wursthall 2017. All Rights Reserved"
          br
          text "310 Baldwin ave., San Mateo, CA 94401 • 650-305-1504"
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
  end
end
