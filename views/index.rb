require './views/page'

module Views
  class Index < Page
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
      end
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
                a 'MAIN', href: '/menu'
              end

              div class: 'menu_drinks' do
                a 'DRINKS', href: '/drinks'
              end

            end

            div class: 'third_section_menu_col' do

              div class: 'menu_latenight' do
                a 'LATE NIGHT', href: '/latenight'
              end

              div class: 'menu_kids' do
                a 'KIDS', href: '/kids'
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
              p do
                text 'Have a question or a comment?'
                br
#                text 'We are currently not taking reservations.'
              end

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
                    a 'Dinner', href: '/menu'
                    br
                    a 'Late Night', href: '/latenight'
                  end
                end

                div class: 'service_hour2' do
                  p do
                    text 'Coming Soon'
                    br
                    text '5:00 PM - 10:00 PM'
                    br
                    text '10:00 PM - 12:00 AM'

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
 #       input type: 'text', name: 'company', placeholder: 'COMPANY', class: 'form_2line'
 #       input type: 'text', name: 'partysize', placeholder: 'PARTY SIZE', class: 'form_2line'
 #       br
 #       input type: 'text', name: 'eventdate', placeholder: 'EVENT DATE', class: 'form_1line'
 #       br
 #       input type: 'text', name: 'starttime', placeholder: 'START TIME', class: 'form_2line'
 #       input type: 'text', name: 'endtime', placeholder: 'END TIME', class: 'form_2line'
 #       br
        textarea type: 'textarea', name: 'description', placeholder: 'LET US KNOW HOW WE CAN HELP...', class: 'form_textarea'
        br
        button type: 'submit', class: 'submitbutton' do
          text "SUBMIT"
        end
      end
    end

    def render_map
      div id: 'map', class: 'map'
      script <<~JS
        function initMap() {
          var wursthallCoords = { lat: 37.567293, lng: -122.324601 };
          var map = new google.maps.Map(document.getElementById('map'), {
            center: wursthallCoords,
            zoom: 15,
            // Dark theme from https://mapstyle.withgoogle.com/
            styles: [
              {
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#212121"
                  }
                ]
              },
              {
                "elementType": "labels.icon",
                "stylers": [
                  {
                    "visibility": "off"
                  }
                ]
              },
              {
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#757575"
                  }
                ]
              },
              {
                "elementType": "labels.text.stroke",
                "stylers": [
                  {
                    "color": "#212121"
                  }
                ]
              },
              {
                "featureType": "administrative",
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#757575"
                  }
                ]
              },
              {
                "featureType": "administrative.country",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#9e9e9e"
                  }
                ]
              },
              {
                "featureType": "administrative.land_parcel",
                "stylers": [
                  {
                    "visibility": "off"
                  }
                ]
              },
              {
                "featureType": "administrative.locality",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#bdbdbd"
                  }
                ]
              },
              {
                "featureType": "poi",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#757575"
                  }
                ]
              },
              {
                "featureType": "poi.park",
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#181818"
                  }
                ]
              },
              {
                "featureType": "poi.park",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#616161"
                  }
                ]
              },
              {
                "featureType": "poi.park",
                "elementType": "labels.text.stroke",
                "stylers": [
                  {
                    "color": "#1b1b1b"
                  }
                ]
              },
              {
                "featureType": "road",
                "elementType": "geometry.fill",
                "stylers": [
                  {
                    "color": "#2c2c2c"
                  }
                ]
              },
              {
                "featureType": "road",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#8a8a8a"
                  }
                ]
              },
              {
                "featureType": "road.arterial",
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#373737"
                  }
                ]
              },
              {
                "featureType": "road.highway",
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#3c3c3c"
                  }
                ]
              },
              {
                "featureType": "road.highway.controlled_access",
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#4e4e4e"
                  }
                ]
              },
              {
                "featureType": "road.local",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#616161"
                  }
                ]
              },
              {
                "featureType": "transit",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#757575"
                  }
                ]
              },
              {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [
                  {
                    "color": "#000000"
                  }
                ]
              },
              {
                "featureType": "water",
                "elementType": "labels.text.fill",
                "stylers": [
                  {
                    "color": "#3d3d3d"
                  }
                ]
              }
            ]
          });
          var marker = new google.maps.Marker({
            icon: '/images/map-marker.png',
            map: map,
            position: wursthallCoords,
            title: "Wursthall"
          });
        }
      JS

      script src: 'https://maps.googleapis.com/maps/api/js?key=AIzaSyD8Lt6KLOwOoruU-AO70HsZ8a4t_9zqmPY&callback=initMap', async: true, defer: true
    end

  end
end
