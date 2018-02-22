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

            food_item("Deviled Eggs", "Pickled mustard seed, pumpkinseed oil", 99)
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
