describe Fastlane::Actions::ReviewTimeAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The review_time plugin is working!")

      Fastlane::Actions::ReviewTimeAction.run(nil)
    end
  end
end
