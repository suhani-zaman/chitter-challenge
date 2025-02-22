require 'pg'

 class DatabaseConnection
   def self.setup(db_name)
     @connection = PG.connect(dbname: db_name)
   end

   def self.connection
     @connection
   end

   def self.query(sql_query)
     @connection.exec(sql_query)
   end
 end