require './views/page'

module Views
  class Menu < Page
    MENU_ITEMS = [
      ['MAIN', 'menu'],
      ['DRINKS', 'drinks'],
      ['LATE NIGHT', 'latenight'],
      ['KIDS', 'kids']
    ].freeze

    def class_name
      'MAIN'
    end

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

            a href: '/' do
              img src: '/images/download-icon.svg', class: 'download_icon'
            end
          end
        end

        div class: 'menu_container' do

          ul class: 'menu_food' do
            MENU_ITEMS.each do |name, link|
              li { a name.upcase, href: link , class: ('menu_underline' if name == class_name) }
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
          h3 'APPETIZERS & SMALL PLATES'

          div class: 'thick_line' do
            hr
          end

          h3 'PRETZELS'
          p 'Bavarian pretzel served with black pepper honey butter'

          br
          food_name("TRADITIONAL •", '6')
          br
          food_desc("Classic pretzel for 1 to 2 people")
          br
          br
          food_name("PAIN D'EPI •", "11")
          br
          food_desc("Pull-apart pretzel for 3 to 4 people")
          br
          br
          food_desc2("Add Obatzda (Bavarian cheese spread) and pickles •", "4")
          br
          br
          div class: 'thin_line' do
            hr
          end
          food_name('DEVILED EGGS •', '')
          br
          food_desc('Pastured egg, Aleppo pepper, dill, lots of mustard')
          food_desc2('2 pieces', "4")
          br
          food_desc2('4 pieces', "7")
          br
          br
          food_name('HOUSE PICKLES ••', '6')
          br
          food_desc('Naturally fermented and quick pickled vegetables')
          br
          br
          food_name('ROASTED BONE MARROW', '16')
          br
          food_desc('Parsley and cipollini onion salad, pickled mustard seed, grilled sourdough')
          br
          br
          food_name('BEETS & WHEATS ••', '14')
          br
          food_desc('Roasted beets, wheatberries, cucumber, celery, radish, bitter orange purée, almond ricotta, horseradish')
          br
          br
          food_name('Spring Vegetable Salad ••', '13')
          br
          food_desc('Spring vegetables, pea shoots, pickled red onion, quark, mint, toasted pumpkin seeds, lemon vinaigrette')
          br
          br
          food_name('Asparagus, Potato & Sauerkraut Soup ••', '9')
          br
          food_desc('Snap peas, tarragon, pistachios, lemon oil')
          br
          br
          div class: 'thin_line' do
            hr
          end

          h3 'BRATKARTOFFEN'
          p 'Crispy Fried Potatoes'
          br
          food_name('Plain ••', '7')
          br
          food_desc('Chives, mustard aioli')
          br
          br
          food_name('“Currywurst"', '9')
          br
          food_desc('Blackened ginger curry, sausage, blistered mustard seed, mustard aioli')
          br
          br
          food_name('BACON & ONION', '9')
          br
          food_desc('Slow-cooked rosemary bacon, scallions, mustard aioli')
          br
          br

          h3 'SANDWICHES'
          div class: 'thick_line' do
            hr
          end
          p 'All sandwiches come with mixed greens and house potato salad'
          br
          food_name('Chicken Schnitzel Sandwich', '18')
          br
          food_desc('Sauerkraut brine, marinated cucumber, cabbage, preserved lemon-caper aioli')
          br
          br
          food_name('NÜRNBERGER “DREI IM WECKLA”', '16')
          br
          food_desc('Thin pork sausages served three in a bun, sauerkraut, hot mustard')
          br
          br
          food_name('MERGUEZ', '18')
          br
          food_desc('Spicy lamb sausage, harissa aioli, arugula, red onions, cilantro, Turkish bread')
          br
          br
          food_name('Impossible Döner Kebap ••', '19')
          br
          food_desc('Vegan döner, Turkish spices, döner sauce, pickled cucumbers, pickled chiles, arugula, red onions, cilantro, Turkish bread')
          br
          br
          food_name('BUTTERKÄSE GRILLED CHEESE •', '13')
          br
          food_desc('Sourdough, tomato soup dip')
          br
          br
        end


        div class: 'menu_food_items_col' do
          h3 'WURSTS'

          div class: 'thick_line' do
            hr
          end

          p 'All wursts come on a top-split bun with mixed greens, house potato salad, and your choice of
               a topping'
          p  '$16'
          br

          food_name1('THÜRINGER Bratwurst')
          br
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
          food_desc('Finely ground pork and veal, white pepper, onion')
          br
          br
          food_name1('HOT ITALIAN')
          br
          food_desc('Pork, onions, garlic, fennel')
          br
          br
          food_name1('FRANKFURTER')
          br
          food_desc('Veal and pork, smoked, extra-long')
          br
          br
          food_name1('CHICKEN & PORTOBELLO')
          br
          food_desc('Chicken, garlic (pork casing)')
          br
          br
          food_name1('WILD BOAR')
          br
          food_desc('Pork, marjoram, caraway, wine-soaked currants')
          br
          br
          food_name1('AL PASTOR')
          br
          food_desc('Pork, dried chiles, pineapple')
          br


          h3 'TOPPINGS'
          p 'Choice of one, additional toppings for $1 each'
          br
          food_desc('Sauerkraut ••')
          br
          br
          food_desc('Speck-Cherry Pepper Relish')
          br
          br
          food_desc('Grilled Onions ••')

          br
          br
          food_desc('Sweet & Sour Peppers & Onions ••')
          br
          br

          div class: 'thin_line' do
            hr
          end

          food_name('Sausage Party', '50')
          food_desc('Six sausages (chef’s selection), sauerkraut, potato salad')
          br
          br
          h3 'DESSERT'
          div class: 'thick_line' do
            hr
          end

          food_name('Pumpkin seed Sundae ••', '7')
          food_desc('Vanilla ice cream, pumpkin seed brittle, pumpkin seed oil, smoked sea salt')
          br
          br
          br
        end

      end
    end

  end
end
