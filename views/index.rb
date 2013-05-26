require "date"

module Views
    class Index < Layout
        def ip
            @ip
        end
        def year
            d = DateTime.now();
            d.year
        end
    end
end
