def empty
  con = PG.connect(dbname: 'personal_test_manager')
  rs = con.exec "TRUNCATE name"
end

def add_base_bookmarks
  con = PG.connect(dbname: 'personal_test_manager')
  rs = con.exec "INSERT INTO name (title, url) VALUES ('Makers Academy', 'http://www.makersacademy.com')"
  # rs = con.exec "INSERT INTO name (url) VALUES ('http://www.makersacademy.com')"

  rs = con.exec "INSERT INTO name (title, url) VALUES ('Destroy all software', 'http://www.destroyallsoftware.com')"
  # rs = con.exec "INSERT INTO name (url) VALUES ('http://www.destroyallsoftware.com')"

  rs = con.exec "INSERT INTO name (title, url) VALUES ('Google', 'http://www.google.com')"
  # rs = con.exec "INSERT INTO name (url) VALUES ('http://www.google.com')"

end
