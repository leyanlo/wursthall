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

            if name == 'Logo'
             img src: '/images/wursthall-logo-1.svg', class: 'logo'


           elsif name == 'Menu'
              div class: 'dropdown' do
               li {a 'MENU', href: '#menu'}
                div class: 'dropdown-content' do
                  a 'MAIN', href: '/'
                  a 'DRINKS', href: '/'
                  a 'LATE NIGHT', href: '/'
                  a 'KIDS', href: '/'
                end
              end

            else
              li { a name.upcase, href: link}
            end
          end
        end
      end
    end

    def render_main
      div class: 'first_section' do
        img src: '/images/icon-wursthall.svg', class: 'big_image'
      end


      a name: 'about' do

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
      end


      div class: 'third_section' do
        div class: 'third_section_content' do

          h2 "MENU"

          p do
            text "Lorem ipsum dolor sit amet, consul gloriatur at mel. At omnium expetendis pro. Persius detracto concludaturque id eos, nam alia euismod fabellas te, sed unum minimum lobortis eu. Utinam theophrastus no mel, nisl possit ne his, id dolor pertinacia his. Nulla scriptorem no mel. Volumus lobortis urbanitas mea te."
            br
            br
            text "Eu vis saperet oportere, labore putant molestiae his cu. Animal intellegat eu cum, postea cetero salutandi ad cum, lorem munere eos at. At nam veri melius, mea eu minimum delicatissimi. Id simul accusam phaedrum sed, tibique similique eu nam. An vel nobis eligendi vituperata. Sit ad vocent placerat honestatis, eu qui eirmod voluptatibus. Cu inermis accumsan duo, regione aliquid in vix. " 
            a 'Download Menu', href: '/'
          end


          div class: 'third_section_menu' do

            div class: 'third_section_menu_col' do

              div class: 'menu_main' do
                a 'MAIN', href: '/'
              end

              div class: 'menu_drinks' do
                a 'DRINKS', href: '/'
              end

            end

            div class: 'third_section_menu_col' do
              
              div class: 'menu_latenight' do
                a 'LATE NIGHT', href: '/'
              end

              div class: 'menu_kids' do
                a 'KIDS', href: '/'
              end




            end

          end
        end
      end
    


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
                  text 'Main Menu'
                  br
                  text 'Late Night Menu'
              end  
              end  

              div class: 'service_hour2' do
                p do
                  text '11:00 AM - 9:30 PM'
                  br
                  text '9:30 PM - 12:00 AM'
                
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
      form method: 'post' do
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
        input type: 'textarea', name: 'description', placeholder: 'TELL US ABOUT YOUR EVENT...', class: 'form_textarea'
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
