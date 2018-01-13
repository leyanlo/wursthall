require './views/page'

module Views
  class Index < Page
    NAV_ITEMS = [
      ['HOME', '/'],
      ['About', '/'],
      ['Menu', '/'],
      ['Contact', '/'],
    ].freeze

    def render_nav
      div class: 'nav_container' do
        img src: '/images/icon-wursthall.svg', class: 'small_image'

        div class: 'right' do
          ul class: 'location' do
             img src: '/images/icon-clock.png', class: 'clock_icon'
            li '11:00AM - 3:00 PM'
            li '310 Baldwin ave., San Mateo, CA 94401'
            li '650-305-1604'
            img src: '/images/button-facebook-off.png', class: 'social_icon'
            img src: '/images/button-instagram-off.png', class: 'social_icon'
            img src: '/images/button-twitter-off.png', class: 'social_icon'
          end

          ul class: 'menu' do
            NAV_ITEMS.each do |name, link|
              li { a name.upcase, href: link }
            end
          end
        end
      end
    end

    def render_main
      div class: 'first_section' do
        img src: '/images/icon-wursthall.svg', class: 'big_image'
      end

      div class: 'second_section' do
        div class: 'second_section_content' do
         div class: 'second_section_left' do
          
          img src: '/images/stamp-1.png', class: 'big_stamp'

          h2 "ABOUT US"

          p do
            text "Wursthall is a restaurant & bierhaus located in downtown San Mateo. We aim to bring the festivity and community of the German beerhall to the Bay Area, and hope to create a gathering space for friends and families."
            br 
            br
            text "San Mateo natives, Adam Simpson and Tyson Mao, have partnered with James Beard award winning chef Kenji López-Alt to deliver a German and Austrian inspired menu for your enjoyment. Our menu features sausage plates, XXX (crispy fried potatoes), and more. We are proud to partner with Anne and Robert Moser of Backhaus Bakery for our pretzels and buns."
            br
            br
            text  "We feature 22 beers which include German and Belgian style ales and local craft brews. We also feature a selection of red and white wine on tap."
            br
            br
            text "Whether it’s an outing with some colleagues, a drink with an old friend, or a family night out for dinner, we hope you come and enjoy our contribution to downtown San Mateo. If you see us around, don’t hesitate to say hello!"
          end


         img src: '/images/stamp-2.png', class: 'small_stamp'
        end

        div class: 'second_section_right' do
          img src: '/images/aboutus-imgs.png', class: 'aboutus_image'
        end
       end 
      end


        

      div class: 'third_section' do
                div class: 'third_section_content' do

          h2 "MENU"

          p do
            text "Lorem ipsum dolor sit amet, consul gloriatur at mel. At omnium expetendis pro. Persius detracto concludaturque id eos, nam alia euismod fabellas te, sed unum minimum lobortis eu. Utinam theophrastus no mel, nisl possit ne his, id dolor pertinacia his. Nulla scriptorem no mel. Volumus lobortis urbanitas mea te."
            br 
            br
            text "Eu vis saperet oportere, labore putant molestiae his cu. Animal intellegat eu cum, postea cetero salutandi ad cum, lorem munere eos at. At nam veri melius, mea eu minimum delicatissimi. Id simul accusam phaedrum sed, tibique similique eu nam. An vel nobis eligendi vituperata. Sit ad vocent placerat honestatis, eu qui eirmod voluptatibus. Cu inermis accumsan duo, regione aliquid in vix. Download Menu"
          end


          div class: 'third_section_menu' do
            img src: '/images/home_menu_button_lunch-off@2x.jpg', class: 'menu_lunch'
            img src: '/images/home_menu_button_dinner-off@2x.jpg', class: 'menu_dinner'
            img src: '/images/home_menu_button_happyhour-off@2x.jpg', class: 'menu_hh'
            img src: '/images/home_menu_button_latenight-off@2x.jpg', class: 'menu_latenight'
            img src: '/images/home_menu_button_drinks-off@2x.jpg', class: 'menu_drinks'
          end
       end   
      end



      div class: 'fourth_section' do
        div class: 'fourth_section_content' do

          h2 "CONTACT US"
          p 'Have a question or a comment? Let us know how we can help.'

            div class: 'fourth_section_contact' do

              p 'form'
              p 'map'

            end
        end
      end

    end

    def render_footer
    end

  end
end
