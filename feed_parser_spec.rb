require File.join(File.dirname(__FILE__), 'feed_parser')

describe FeedParser do

  let(:feed_file) { 'feed.xml' }

  subject { FeedParser.new(feed_file).parse }

  it 'has a name' do
    subject.name.should == 'Que choa'
  end

  it 'has a root url' do
    subject.root_url.should == 'http://quechoa.info'
  end

  it "has multiple news items" do
    subject.should have(3).items
  end
end
