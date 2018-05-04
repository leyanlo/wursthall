require './views/menu'

module Views
  class Drinks < Menu
    def drink_item1(drink_name, drink_style, drink_price)
      div class: 'drink_name' do
        text drink_name
      end

      div class: 'drink_style' do
        text drink_style
      end

      div class: 'drink_price' do
        text drink_price
      end
    end

    def drink_item2(maker_name, maker_location, drink_price)
      div class: 'maker_name' do
        text maker_name
      end

      div class: 'maker_location' do
        text maker_location
      end

      div class: 'drink_price' do
        text drink_price
      end

      def drink_item3(maker_name, maker_location)
        div class: 'maker_name' do
          text maker_name
        end

        div class: 'maker_location' do
          text maker_location
        end

      end
    end

    def nonalc(nonalc_name, nonalc_price)
      div class: 'nonalc_name' do
        text nonalc_name
      end

      div class: 'nonalc_price' do
        text nonalc_price
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
        div class: 'drink_items_col' do

          h3 'BEERS ON TAP'

          div class: 'thick_line' do
            hr
          end
          br
          p 'Come by Wursthall to check out the weekly rotational taps'
          br

          h3 'LOCAL'
          br
          drink_item1('Decoy', 'Helles Lager / 5.5%', '7')
          drink_item2('47 Hills', 'South San Francisco, CA', '16oz')
          br
          br
          drink_item1('KALIFORNIA KÖLSCH', 'Kölsch / 4.8%', '6')
          drink_item2('Magnolia', 'South San Francisco, CA', '400ml')
          br
          br
          drink_item1('IRREVERENT WIT', 'Belgian-Style Witbier / 5.3%', '7')
          drink_item2('Laughing Monk', 'San Francisco, CA', '12oz')
          br
          br
          drink_item1('ROTATIONAL PALE ALE', 'Pale Ale / 4.0-6.0%', '7')
          drink_item2('Bare Bottle', 'San Francisco, CA', '16oz')
          br
          br
          drink_item1('ROTATIONAL IPA', 'IPA / 5.0-7.0%', '8')
          drink_item2('Fieldwork', 'Berkeley, CA', '16oz')
          br
          br
          drink_item1('DOUBLE TAP', 'Double IPA / 8.5%', '9')
          drink_item2('Berryessa', 'Winters, CA', '16oz')
          br
          br
          drink_item1('WESTFALIA', 'Amber/Red Ale / 5.6%', '7')
          drink_item2('Fort Point', 'San Francisco, CA', '16oz')
          br
          br
          drink_item1('VELVET MERLIN', 'Nitro Oatmeal Stout / 5.5%', '7')
          drink_item2('Firestone Walker', 'Paso Robles, CA', '16oz')
          br
          br
          drink_item1('ROTATIONAL SOUR', 'Fruited Sour / 5.0-10.0%', '9')
          drink_item2('Almanac', 'Alameda, CA', '8oz')
          br
          br
          drink_item1('HARD APPLE CIDER', 'Cider / 5.5%', '7')
          drink_item2('South City Ciderworks', 'San Bruno, CA', '12oz')
          br
          br
          drink_item1('POMEGRANATE CIDER', 'Pomegranate Cider / 6.5%', '7')
          drink_item2('Two Rivers', 'Sacramento, CA', '12oz')
          br
          br
          h3 'EUROPEAN'
          br
          drink_item1('HELLES', 'Helles Lager / 4.8%', '8 / 16')
          drink_item2('Andechs', 'Andechs, GER', '0.5L / 1L')
          br
          br
          drink_item1('CZECHVAR', 'Lager / 5.0%', '7 / 14')
          drink_item2('Czechvar', 'České Budějovice, CZE', '0.5L / 1L')
          br
          br
          drink_item1('PILSNER', 'Pilsner / 4.8%', '7 / 14')
          drink_item2('Flensburger', 'Flensburg, GER', '0.5L / 1L')
          br
          br
          drink_item1('KÖLSCH', 'Kölsch / 4.8%', '7')
          drink_item2('Früh', 'Köln, GER', '400ml')
          br
          br
          drink_item1('BLANCHE DE BRUXELLES', 'Witbier / 4.5%', '7')
          drink_item2('Brasserie Lefebvre', 'Rebecq-Quenast, BEL', '33cl')
          br
          br
          drink_item1('HEFEWEISSBIER', 'Wheat / 5.4%', '8')
          drink_item2('Weihenstephaner', 'Freising, GER', '0.5L')
          br
          br
          drink_item1('AVENTINUS', 'Weizenbock / 8.2%', '9')
          drink_item2('Schneider', 'Kelheim, GER', '12oz')
          br
          br
          drink_item1('SAISON DUPONT', 'Saison / 6.5%', '9')
          drink_item2('Brasserie Dupont', 'Tourpes, BEL', '25cl')
          br
          br
          drink_item1('TRIPEL KARMELIET', 'Strong Golden Ale / 8.4%', '9')
          drink_item2('Brouwerij Bosteels', 'Buggenhout, BEL', '25cl')
          br
          br
          drink_item1('SCHWARZBIER', 'Black Lager / 4.8%', '7 / 14')
          drink_item2('Kostritzer', 'Gera, GER', '0.5L / 1L')
          br
          br
          drink_item1('ASAM BOCK', 'Strong Dark Lager / 6.9%', '9 / 18')
          drink_item2('Weltenburger', 'Kelheim, GER', '0.5L / 1L')
          br
          br
          drink_item1('DUBBEL', 'Dark Ale / 7.0%', '9')
          drink_item2('La Trappe', 'Berkel-Enschot, BEL', '25cl')
          br
          br
          drink_item1('ABT 12', 'Strong Dark Ale / 10.0%', '10')
          drink_item2('St. Bernardus', 'Watou, BEL', '25cl')
          br
          br
          drink_item1('GRAND CRU', 'Flanders Sour Red Ale / 6.0%', '10')
          drink_item2('Rodenbach', 'Roeselare, BEL', '25cl')
          br
          br
        end

        div class: 'drink_items_col' do
          h3 'WEIN'

          div class: 'thick_line' do
            hr
          end


          drink_item1('FABLEIST', 'Sauvignon Blanc', '11')
          drink_item3('2016', 'Central Coast, CA')
          br
          br
          drink_item1('WONDERWALL', 'Chardonnay', '13')
          drink_item3('2016', 'Central Coast, CA')
          br
          br
          drink_item1('POOL PARTY', 'Rosé of Grenache', '9')
          drink_item3('2016', 'Santa Barbara County, CA')
          br
          br
          drink_item1('BARTER & TRADE', 'Cabernet Sauvignon', '15')
          drink_item3('2015', 'Paso Robles, CA')
          br
          br
          drink_item1('WONDERWALL', 'Pinot Noir', '13')
          drink_item3('2016', 'Edna Valley, CA')
          br
          br
          drink_item1('FICTION', 'Red Blend', '10')
          drink_item3('2015', 'Paso Robles, CA')
          br
          br

          h3 'BEVERAGES'
          div class: 'thick_line' do
            hr
          end

          div class: 'nonalc_col' do
            nonalc('MEXICAN COKE', '4')
            br
            br
            nonalc('BOYLAN’S DIET COLA', '4')
            br
            br
            nonalc('ICED TEA', '4')
            br
            br
            nonalc('TOPO CHICO MINERAL WATER (SPARKLING)', '4')
          end

          div class: 'nonalc_div'

          div class: 'nonalc_col' do
            nonalc('BUBBLE UP', '4')
            br
            br
            nonalc('MEZZO MIX', '4')
            br
            br
            nonalc('IKON COLD BREW COFFEE', '4')
            br
            br
            nonalc('MOUNTAIN VALLEY SPRING WATER (STILL)', '4')
            br
            br
            br
          end


        end
      end
    end

  end
end
