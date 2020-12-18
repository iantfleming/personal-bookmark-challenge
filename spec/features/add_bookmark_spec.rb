feature 'Add a new bookmark' do
  before(:each) do
    empty
    add_base_bookmarks
  end
  scenario 'A user can add new bookmarks' do
    visit('/')
    fill_in('title', with: "hello")
    fill_in('url', with: "hello.com")
    click_button('Enter bookmark')
    click_link("Please click to view bookmarks!")
    expect(page).to have_content("hello",  "hello.com")
  end
end
