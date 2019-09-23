module Wanda
  module Helpers
    def link_to(label : String | Symbol | Nil = nil, path : String? = nil, method : String | Symbol = :get)
        unless label
            label = "Go to #{path}"
        end
        Wanda::ViewHelpers.link_to url: path, method: method , label: label
    end
  end
end
