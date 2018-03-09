require './views/page'

module Views
  class Menu < Page
    MENU_ITEMS = [
      ['MAIN', '/'],
      ['DRINKS', 'menu'],
      ['LATE NIGHT', '/'],
      ['KIDS', '/']
    ].freeze

    def food_item(item_name, item_description, item_price)
      div class: 'item_name' do
        text item_name
      end

      div class: 'item_description' do
        text item_description
      end

      div class: 'item_price' do
        text item_price
      end

    def food_item2(item_name, item_description)
      div class: 'item_name' do
        text item_name
      end

      div class: 'item_description' do
        text item_description
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
        	p '• VEGETARIAN   •• VEGAN'
        	br
        	br
	
          div class: 'menu_food_items_col' do
            h3 'APPETIZERS & SMALL PLATES'

            div class: 'thick_line' do
              hr
            end

            h3 'PRETZELS'
            p 'Bavarian pretzel served with black pepper honey butter'
            br
            food_item("TRADITIONAL •", "Classic pretzel for 1 to 2 people", '6')
            br
            br
            food_item("PAIN D'EPI •", "Pull-apart pretzel for 3 to 4 people", '11')
            br
            br
            add_item("Add Obatzda (Bavarian cheese spread) and pickles", '4')
            br
            br

            div class: 'thin_line' do
              hr
            end

            food_item2("DEVILED EGGS •", "Pastured egg, Aleppo pepper, dill, lots of mustard" )
            add_item("2 Pieces", '4')
            add_item("4 Pieces", '7')
            br
            br
            food_item("HOUSE PICKLES •", "Naturally fermented and quick pickled vegetables", '6')
            br
            br
            food_item("ROASTED BONE MARROW", "Parsley and cipollini onion salad, pickled mustard seed,
					   grilled sourdough", '16')
            br
            br
            food_item("BEETS & WHEATS ••", "Cucumber, celery, radish, bitter orange purée,
 					   almond ricotta, horseradish", '14')
            br
            br
            food_item("GRILLED BROCCOLINI SALAD ••", "Pumpkin seed vinaigrette, quark, egg, grilled lemon", '13')
            br
            br
            food_item("TOASTED PUMPKIN SEED SOUP ••", "Pumpkin seed oil, sourdough croutons", '9')
            br
            br

            div class: 'thin_line' do
              hr
            end

            h3 'BRATKARTOFFEN'
            p 'Crispy Fried Potatoes'
            br
            food_item("Plain ••", "Chives, mustard aioli", 7)
            br
            br
            food_item("Currywurst", "Blackened ginger curry, sausage, blistered mustard seed,
					   mustard aioli", 9)
            br
            br
            food_item("BACON & ONION", "Slow-cooked bacon, scallions, mustard aioli", 9)
            br
            br

            h3 'SANDWICHES'

            div class: 'thick_line' do
              hr
            end

            p 'All sandwiches come with mixed greens and house potato salad'
            br
            food_item("Chicken Schnitzel Sandwich", "Sauerkraut brine, marinated cucumber, cabbage,
					   preserved lemon-caper aioli", 15)
            br
            br
            food_item("NÜRNBERGER “DREI IM WECKLA”", "Thin pork sausages served three in a bun, sauerkraut,
					   hot mustard", 16)
            br
            br
            food_item("MERGUEZ", "Spicy lamb sausage, harissa aioli, arugula, red onions,
					   cilantro, Turkish bread ", 18)
            br
            br
            food_item("Impossible Döner Kebap ••", "Vegan döner, Turkish spices, döner sauce,
            		   pickled cucumbers and chiles, arugula,cred onions, cilantro, Turkish bread", 19)
            br
            br
            food_item("BUTTERKÄSE GRILLED CHEESE •", "Sourdough, tomato soup dip", 13)

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
            food_item2('Bratwurst', 'Finely ground pork and veal, white pepper, onion')
            br
            br
            food_item2('THÜRINGER', 'Coarsely ground pork and veal, marjoram, brown caraway')
            br
            br            
            food_item2('SHEBOYGAN', 'Pork, white pepper, celery seed, mace')
            br
            br
            food_item2('FRANKFURTER', 'Veal and pork, smoked, extra-long')
            br
            br
            food_item2('CHICKEN & PORTOBELLO', 'Chicken (pork casing)')
            br
            br
            food_item2('HOT ITALIAN', 'Pork, onions, garlic, fennel')
            br
            br
            food_item2('CAJUN', 'Pork, cayenne, black pepper, garlic')
            br
            br
            food_item2('AL PASTOR', 'Pork, dried chiles, pineapple')

            br
            br

            h3 'TOPPINGS'
            p 'Choice of one, additional toppings for $1 each'
            br

            add_item('Sauerkraut ••','')
            br
            br
            add_item('Grilled Onions ••','')
            br
            br
            add_item('Speck-Cherry Pepper Relish','')
            br
            br
            add_item('Sweet & Sour Peppers & Onions ••','')
            br
            br

            div class: 'thin_line' do
              hr
            end

            br
            food_item('Sausage Party', 'Six sausages (chef’s selection), sauerkraut, potato salad','50')
            br
            br

            h3 'DESSERT'
            div class: 'thick_line' do
              hr
            end

            food_item('Pumpkin seed Sundae ••', 'Vanilla ice cream, pumpkin seed brittle, pumpkin seed oil, smoked sea salt','7')

          end
        end
    end

  end
end
