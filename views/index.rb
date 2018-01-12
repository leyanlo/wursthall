require './views/page'

module Views
  class Index < Page
    NAV_ITEMS = [
      ['HOME', '/'],
      ['About', '/'],
      ['Menu', '/'],
      ['Contact', '/'],
    ].freeze

    def render_nav
      div class: 'nav_container' do
        img src: '/images/icon-wursthall.svg', class: 'small_image'

        div class: 'right' do
          ul class: 'location' do
            li '11:00AM - 3:00 PM'
            li '310 Baldwin ave., San Mateo, CA 94401'
            li '650-305-1604'
          end

          ul class: 'menu' do
            NAV_ITEMS.each do |name, link|
              li { a name.upcase, href: link }
            end
          end
        end
      end
    end

    def render_main
      div class: 'first_section' do
        img src: '/images/icon-wursthall.svg', class: 'big_image'
      end

      div class: 'second_section' do
      end
    end

    def render_footer
    end

  end
end
