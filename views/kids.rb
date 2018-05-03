require './views/menu'

module Views
  class Kids < Menu
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
        end



        div class: 'menu_food_items_col' do

          h3 'MAINS'		
          div class: 'thick_line' do
            hr
          end
          p 'Pick one main and one side'
		  p '$10'
		  br
          food_name('Kinderwurst', '')
          food_desc('German-style grilled pork hot dog served on a butter-griddled top-split bun')         
          br
          br
          food_name1('Chicken Schnitzel Sandwich')
          br
          food_desc('Fried chicken breast sandwich with shredded cabbage, preserved lemon-caper aioli, and cucumber salad (served plain on request)') 
          br
          br
          food_name1('Grilled Cheese •')
          br
          food_desc('Gooey grilled cheese on buttered sourdough with a side of tomato soup dip')  
          br
          br
          food_name1('Döner Kebap ••')
          br
          food_desc('Vegan döner kebap served with arugula, red onions, cilantro, and vegan döner sauce on a Turkish bun (served plain on request)')                           
          br
          br
        end

        div class: 'menu_food_items_col' do
          h3 'SIDES'		
          div class: 'thick_line' do
            hr
          end

          food_name1('Potato Salad ••')
          br
          food_desc('German potato salad with mustard and dill')
          br
          br
          food_name1('Green Salad ••')
          br
          food_desc('Mixed green salad with lemon vinaigrette')
          br
          br
          food_name1('Asparagus & Pea Salad ••')
          br
          food_desc('Asparagus, snap peas, and pea shoots')
          br
          br
        end
 
        div class: 'menu_food_items_col' do
          h3 'DRINKS'		
          div class: 'thick_line' do
            hr
          end

          food_name('Apple Juice', '2')
          br
          br
          food_name('Milk', '2')
          br
          br

          h3 'DESSERTS'		
          div class: 'thick_line' do
            hr
          end

          food_name('Kinder Sundae •', '4')
          br
          food_desc('1 scoop of vanilla ice cream with pumpkin seed brittle')
          br
          br
          food_name('Mixed Berries ••', '4')
          br
          food_desc('Mixed fresh berries')
        end	


      end
    end

  end
end
