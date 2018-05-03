require './views/menu'

module Views
  class LateNight < Menu
    MENU_ITEMS = [
      ['MAIN', 'menu'],
      ['DRINKS', 'drinks'],
      ['LATE NIGHT', 'latenight'],
      ['KIDS', 'kids']
    ].freeze

    def food_name(item_name, item_price)
      div class: 'item_name' do
        text item_name
      end

      div class: 'item_price' do
        text item_price
      end

      def food_name1(item_name)
        div class: 'item_name' do
          text item_name
        end
      end

      def food_desc(item_description)
        div class: 'item_description' do
          text item_description
        end
      end


      def food_desc2(item_description, item_price)
        div class: 'item_description' do
          text item_description
        end

        div class: 'item_price' do
          text item_price
        end

      end

    end

    def add_item(item_description, item_price)

      div class: 'item_description' do
        text item_description
      end

      div class: 'item_price' do
        text item_price
      end

    end

    def render_main
      div class: 'menu_page' do
        div class: 'menu_title' do

          div class: 'menu_title_left' do
            h2 'MENU'
          end

          div class: 'menu_title_right' do
            a 'DOWNLOAD MENU', href: '/', class: 'menu_download_button'
          end
        end

        div class: 'menu_container' do

          ul class: 'menu_food' do
            MENU_ITEMS.each do |name, link|
              li { a name.upcase, href: link }
            end
          end
        end

        all_items
      end
    end



    def all_items
      div class: 'menu_food_items' do
        br
        br

        div class: 'veg' do
          p '• VEGETARIAN'
          p '•• VEGAN'
          br
          h3 'WURSTS'

          div class: 'thick_line' do
            hr
          end
          p 'All wursts come on a top-split bun with house potato salad and sauerkraut'
          p '$14'
          br
        end



        div class: 'menu_food_items_col' do


          food_name('THÜRINGER Bratwurst', '')
          food_desc('Coarsely ground pork and veal, marjoram, brown caraway')         
          br
          br
          food_name1('Cheddar Bratwurst')
          br
          food_desc('Pork, veal, black pepper, cheddar cheese') 
          br
          br
          food_name1('Traditional Bratwurst')
          br
          food_desc('Pork, onions, garlic, fennel')  
          br
          br
          food_name1('HOT ITALIAN')
          br
          food_desc('Pork, onions, garlic, fennel')                           
          br
          br


        end

        div class: 'menu_food_items_col' do


          food_name1('FRANKFURTER')
          br
          food_desc('Veal and pork, smoked, extra-long')
          br
          br
          food_name1('CHICKEN & PORTOBELLO')
          br
          food_desc('Chicken (pork casing)')
          br
          br
          food_name1('WILD BOAR')
          br
          food_desc('Pork, marjoram, carawy, wine-soaked currants')
          br
          br
          food_name1('AL PASTOR')
          br
          food_desc('Pork, dried chiles, pineapple')
          br

  
        end
 
      div class: 'veg' do
          div class: 'thin_line' do
            hr
          end        	
      end

        div class: 'menu_food_items_col' do

          food_name('Sausage Party', '50')
          food_desc('Six sausages (chef’s selection), sauerkraut, potato salad')
          br
          br
        end

      div class: 'veg' do
          div class: 'thin_line' do
            hr
          end        	
      end

        div class: 'menu_food_items_col' do
          food_name('Butterkäse Grilled Cheese •', '10')
          food_desc('Sourdough, tomato soup dip, potato salad')
          br
          br
        end

       div class: 'veg' do
          div class: 'thin_line' do
            hr
          end        	
      end       

        div class: 'menu_food_items_col' do
          food_name('Pumpkin seed Sundae ••', '7')
          food_desc('Vanilla ice cream, pumpkin seed brittle, pumpkin seed oil, smoked sea salt')          
        end


      end
    end

  end
end
