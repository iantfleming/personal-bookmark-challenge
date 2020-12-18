require 'bookmark'

describe Bookmark do
  before(:each) do
    empty
    add_base_bookmarks
  end
  describe '#all' do
    it 'returns all bookmarks' do
      # bookmark_instance = Bookmark.new
      # bookmarks = bookmark_instance.all
      bookmarks = Bookmark.all

      expect(bookmarks).to include({:title => 'Makers Academy', :url => "http://www.makersacademy.com"})
      expect(bookmarks).to include({:title => 'Destroy all software', :url => "http://www.destroyallsoftware.com"})
      expect(bookmarks).to include({:title => 'Google', :url => "http://www.google.com"})
    end
  end

  describe('#add_bookmark') do
    it 'adds a new bookmark' do
      Bookmark.add_bookmark(title: 'hello', url: 'hello.com')
      bookmarks = Bookmark.all.first
      p bookmarks
      expect(bookmarks['title']).to eq('hello')
      expect(bookmarks['url']).to eq('hello.com')
    end
  end
end