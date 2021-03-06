module SavedSearchTestHelper
  def mock_saved_search_service!
    mock_sqs_service = Class.new do
      def initialize
        @commands = []
      end

      def commands
        @commands
      end

      def send_message(msg)
        @commands << msg.split(/\n/).first
      end
    end

    service = mock_sqs_service.new
    SavedSearch.stubs(:sqs_service).returns(service)
  end
end
