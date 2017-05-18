module Fastlane
  module Helper
    class ReviewTimeHelper
      # class methods that you define here become available in your action
      # as `Helper::ReviewTimeHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the review_time plugin helper!")
      end
    end
  end
end
