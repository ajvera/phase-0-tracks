require 'sqlite3'

# Create db to house feelings tables
db = SQLite3::Database.new('feelings')
# Create feelings table

create_table_cmd =  <<-SQL
  CREATE TABLE IF NOT EXISTS feelings)
  id INTEGER PRIMARY KEY,
  date INTEGER,
  
SQL