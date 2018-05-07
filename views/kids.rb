require './views/menu'

module Views
  class Kids < Menu
    def class_name
      'KIDS'
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

          h3 'DRINKS'
          div class: 'thick_line' do
            hr
          end

          p '$2 Each'
          br
          food_name1('Apple Juice')
          br
          br
          food_name1('Milk')
          br
          br

        end

        div class: 'menu_food_items_col' do
          h3 'DESSERTS'
          div class: 'thick_line' do
            hr
          end

          p '$4 Each'
          br
          food_name1('Kinder Sundae •')
          br
          food_desc('1 scoop of vanilla ice cream with pumpkin seed brittle')
          br
          br
          food_name1('Mixed Berries ••')
          br
          food_desc('Mixed fresh berries')
          br
          br
        end

        div do
        	br
        	br
        	br
        end

      end
    end

  end
end
