require 'sqlite3'

class Affinity

	attr_accessor :date, :affinity_level, :shared_event, :message, :user_id, :a_id

	def initialize(date, affinity_level, shared_event, message, user_id, a_id=nil)
		@a_id = a_id
		@date = date
		@affinity_level = affinity_level
		@shared_event = shared_event
		@message = @message
		@user_id = @user_id
	end

	def self.create_table
		sql = <<-SQL
			CREATE TABLE IF NOT EXISTS affinity (
			a_id INTEGER PRIMARY KEY,
			date VARCHAR(225),
			affinity_level REAL,
			shared_event VARCHAR(225),
			message VARCHAR(225),
			user_id INT,
			FOREIGN KEY (user_id) REFERENCES users(u_id))
		SQL

		DB[:conn].execute(sql)
	end

	def save
		sql = <<-SQL
			INSERT INTO affinity (date, affinity_level, shared_event, message, user_id)
			VALUES (?,?,?,?,?)
		SQL

		DB[:conn].execute(sql, self.date, self.affinity_level, self.shared_event, self.message, self.user_id)

		@a_id = DB[:conn].execute("SELECT last_insert_rowid() FROM affinity")[0][0]
	end

	def self.create(date:, affinity_level:, shared_event:, message:, user_id:)
		affinity = Affinity.new(date, affinity_level, shared_event, message, user_id)
		affinity.save
		affinity
	end

end

#   CREATE TABLE IF NOT EXISTS affinity(
#   a_id INTEGER PRIMARY KEY,
#   date VARCHAR(225),
#   affinity_level REAL,
#   shared_event VARCHAR(225),
#   message VARCHAR(225),
#   user_id INT,
#   FOREIGN KEY (user_id) REFERENCES users(u_id)
#   )
# SQL