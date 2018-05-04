require './views/menu'

module Views
  class LateNight < Menu
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
          br
          br
        end
      end
    end
  end
end
