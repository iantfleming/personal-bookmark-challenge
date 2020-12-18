feature 'Viewing bookmarks' do
  before(:each) do
    empty
    add_base_bookmarks
  end
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content('Makers Academy')
    expect(page).to have_content('Destroy all software')
    expect(page).to have_content('Google')
  end
end
