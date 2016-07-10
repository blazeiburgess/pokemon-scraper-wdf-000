class Pokemon
  attr_reader :id, :name, :type, :db
  @@all = []
  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  def self.save(name, type, db) 
    db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?);",name,type) 
  end
  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id=?;", id)
  end
  # def alter_hp(id, hp, db)
  #   db.execute("UPDATE pokemon SET hp=? WHERE id=?",hp,id) 
  # end
end
