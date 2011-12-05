module Views
  module Layouts
    class Default < Mustache
      def title
        @title || "Some default title"
      end
    end
  end
end
