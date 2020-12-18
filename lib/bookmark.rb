require 'pg'

class Bookmark
  def self.all
    begin
      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(:dbname => 'personal_test_manager')
      else
        con = PG.connect(:dbname => 'bookmark_manager2')
      end

      rs = con.exec "SELECT * FROM name"

      rs.map do |row|
        bookmarks = {:title => row['title'], :url => row['url'] }
        # bookmarks.map do |bookmark|

      end

    # rescue PG::Error => e
    #
    #   puts e.message
    #
    #   ensure
    #
    #   rs.clear if rs
    #   con.close if con
    end
  end

  def self.add_bookmark(title:, url:)
    begin
      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(dbname: 'personal_test_manager')
      else
        con = PG.connect(dbname: 'bookmark_manager2')
      end

      rs = con.exec("INSERT INTO name (title, url) VALUES('#{title}', '#{url}') RETURNING id, title, url")

    # rescue PG::Error => e
    #
    #   puts e.message
    #
    #   ensure
    #
    #   rs.clear if rs
    #   con.close if con
    end
  end

  def self.delete_bookmark(title)
    begin
      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(dbname: 'personal_test_manager')
      else
        con = PG.connect(dbname: 'bookmark_manager2')
      end

      result = con.exec("DELETE FROM name WHERE title = '#{title}'")


    end
  end
end
