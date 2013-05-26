module Views
    class Layout < Mustache
        def title
            @title || "What is IP"
        end
    end
end
