feature 'Viewing bookmarks' do
  before(:each) do
    empty
    add_base_bookmarks
  end
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content({:title => 'Makers Academy', :url => "http://www.makersacademy.com"})
    expect(page).to have_content({:title => 'Destroy all software', :url => "http://www.destroyallsoftware.com"})
    expect(page).to have_content({:title => 'Google', :url => "http://www.google.com"})
  end
end
