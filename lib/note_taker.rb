require 'data_mapper'

class NoteTaker
  def self.take_note(description)
    new_note = Note.new(description: description)
    new_note.save
  end
end
