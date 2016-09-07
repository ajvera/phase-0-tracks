require 'sqlite3'

class Users

	attr_accessor :name, :email, :partner_name, :partner_email, :u_id

	def initialize(name, email, partner_name, partner_email, u_id=nil)
		@u_id = u_id
		@name = name
		@email = email
		@partner_name = partner_name
		@partner_email = partner_email
	end

	def self.create_table
		sql = <<-SQL
			CREATE TABLE IF NOT EXISTS users (
			  u_id INTEGER PRIMARY KEY,
			  name VARCHAR(225),
			  email VARCHAR(225),
			  partner_name VARCHAR(225),
			  partner_email VARCHAR(225)
			  ) 
			  SQL
		DB[:conn].execute(sql)
	end

	def save
		sql = <<-SQL
			INSERT INTO users (name, email, partner_name, partner_email) VALUES (?,?,?,?)
		SQL

		DB[:conn].execute(sql, self.name, self.email, self.partner_name, self.partner_email)

		@u_id = DB[:conn].execute("SELECT last_insert_rowid() FROM users")[0][0]
	end

	def self.create(name:, email:, partner_name:, partner_email:)
		user = Users.new(name, email, partner_name, partner_email)
		user.save
		user
	end

	def self.user_validation(username)
		if username == DB[:conn].execute("SELECT name FROM users WHERE name='?'",[username])
			true
		else
			false
		end
	end


end