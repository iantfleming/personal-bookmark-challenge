require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Howdy'
  erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
  erb :bookmarks
  end

  post '/add_bookmark' do
    # @bookmarks = Bookmark.all
    Bookmark.add_bookmark(title: params[:title], url: params[:url])
    redirect '/'
  end

    post '/delete_bookmark' do

      Bookmark.delete_bookmark(params[:title])
      redirect '/bookmarks'
    end

 run! if app_file == $0

end
