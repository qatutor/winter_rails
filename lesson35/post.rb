require 'sqlite3'

class Post
  @@SQLITE_DB_FILE = 'notepad.db'

  def self.post_types
    {Memo: Memo, Task: Task, Link: Link}
  end


  def self.find()

  end

  def self.create(type)
    post_types[type].new
  end

  def save_to_db
    # open connection to db
    db = SQLite3::Database.open(@@SQLITE_DB_FILE)
    #result will be returned as hash
    db.results_as_hash = true
    db.execute(
      "INSERT INTO post (" +
        to_db_hash.keys.join(',') +
          ")" +
            " VALUES (" +
              ('?,'*to_db_hash.key.size).chomp(',') +
          ")",
          to_db_hash.values
    )

    insert_row_id = db.last_insert_row_id
    db.close
    return insert_row_id
  end

  def to_db_hash
    {
       type: self.class.name
       created_at: @created_at.to_s
    }
  end
end