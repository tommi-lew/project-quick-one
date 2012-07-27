class Note
  include DataMapper::Resource
  property :id, Serial
  property :description, String, unique: true
  property :tags, Text
end
