module Fastlane
  module Actions
    module SharedValues
      REVIEW_TIME_IOS = :REVIEW_TIME_IOS
      REVIEW_TIME_MACOS = :REVIEW_TIME_MACOS
    end

    class ReviewTimeAction < Action
      def self.run(params)
        require 'net/http'

        mainURL = "http://appreviewtimes.com"

        begin
          htmlString = Net::HTTP.get(URI(mainURL))
          regexMatches = htmlString.scan(/points\.push\(\s\[\"1\sday\sago\",\s(.*)\]/)
          iosString = regexMatches[0][0]
          macosString = regexMatches[1][0]

          Actions.lane_context[SharedValues::REVIEW_TIME_IOS] = iosString
          Actions.lane_context[SharedValues::REVIEW_TIME_MACOS] = macosString
          return params[:platform] == "macos" ? macosString : iosString
        rescue => ex
          UI.user_error!("Error fetching review time: #{ex}")
        end
      end

      #####################################################
      # @!group Documentation
      #####################################################
      def self.description
        "Fetches live iOS and macOS review times from appreviewtimes.com"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :platform,
                                       env_name: "REVIEW_TIME_PLATFORM",
                                       description: "Specifies which platform's review time should be returned. Accepted values: ios, macos",
                                       is_string: false,
                                       default_value: "ios")
        ]
        end

      def self.output
        [
          ['REVIEW_TIME_IOS', 'String for the iOS review time, in days'],
          ['REVIEW_TIME_MACOS', 'String for the macOS review time, in days']
        ]
      end

      def self.return_value
        "The current review time in number of days"
      end

      def self.authors
        ["@timwredwards"]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
