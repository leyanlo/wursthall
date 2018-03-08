require './views/page'

module Views
  class Menu < Page
    MENU_ITEMS = [
      ['MAIN', '/'],
      ['LATE NIGHT', 'menu'],
      ['KIDS', '/'],
      ['DRINKS', '/']
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

      br
      br
    end

    def render_main
      div class: 'menu_page' do
        div class: 'menu_title' do

          div class: 'menu_title_left' do
            h2 'MAIN MENU'
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

        div class: 'menu_food_items' do
          div class: 'menu_food_items_col' do
            h3 'APPETIZERS & SMALL PLATES'

            div class: 'thick_line' do
              hr
            end

            h3 'PRETZELS'
            p 'Bavarian pretzel served with black pepper honey butter'
            food_item("TRADITIONAL •", "Classic pretzel for 1 to 2 people", 6)
            food_item("PAIN D'EPI •", "Pull-apart pretzel for 3 to 4 people", 11)
            food_item(" ", "Add Obatzda (Bavarian cheese spread) and pickles", 4)

            div class: 'thin_line' do
              hr
            end

            food_item("DEVILED EGGS •", "Pastured egg, Aleppo pepper, dill, lots of mustard", 99)
            food_item("HOUSE PICKLES •", "Naturally fermented and quick pickled vegetables", 6)
            food_item("ROASTED BONE MARROW", "Parsley and cipollini onion salad, pickled mustard seed,
					   grilled sourdough", 16)
            food_item("BEETS & WHEATS ••", "Cucumber, celery, radish, bitter orange purée,
 					   almond ricotta, horseradish", 14)
            food_item("GRILLED BROCCOLINI SALAD ••", "Pumpkin seed vinaigrette, quark, egg, grilled lemon", 13)
            food_item("TOASTED PUMPKIN SEED SOUP ••", "Pumpkin seed oil, sourdough croutons", 9)
            food_item("ROASTED BONE MARROW", "Pickled mustard seed, pumpkinseed oil", 99)
            food_item("ROASTED BONE MARROW", "Pickled mustard seed, pumpkinseed oil", 99)            

            food_item("ROASTED BONE MARROW", "Pickled mustard seed, pumpkinseed oil", 99)
            food_item("Roasted Beet & Wheat Berry Salad", "Beets, berry, blah blah", 99)

            div class: 'thin_line' do
              hr
            end
          end

          div class: 'menu_food_items_col' do
            h3 'PRETZELS'

            div class: 'thick_line' do
              hr
            end

            p 'All pretzels served wth honey butter unless otherwise noted. Add obatzda and pickles (cold cheese spread) for $$'

            food_item('CLASSIC •', 'Lye bath, sea salt','')
            food_item('Cheese Pretzel •', 'Sea salt & asiago','')
          end

        end
      end
    end

  end
end
