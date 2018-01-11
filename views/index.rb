require './views/page'

module Views
  class Index < Page

    def render_nav
    end

    def render_main
      div 'hello world'
    end

    def render_footer
    end

  end
end
