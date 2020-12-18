feature 'Delete a bookmark' do
  before(:each) do
    empty
    add_base_bookmarks
  end
  scenario 'A user can delete new bookmarks' do
    visit('/bookmarks')
    fill_in('title', with: "Makers Academy")
    # fill_in('url', with: "hello.com")
    click_button('Delete bookmark')
    # click_link("Please click to view bookmarks!")
    expect(page).not_to have_text("Makers Academy")
    expect(page).not_to have_text("http://www.makersacademy.com")
  end
end
