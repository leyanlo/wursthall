module Views
  class Base < Fortitude::Widget
    doctype :html5

    def self.inline(hash)
      array = hash.map do |k, v|
        "#{k.to_s.gsub '_', '-'}:#{v}"
      end

      array.join(';').freeze
    end

    def inline(hash)
      self.class.inline(hash)
    end

  end
end
