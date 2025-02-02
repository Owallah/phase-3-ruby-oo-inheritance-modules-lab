require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  
  attr_accessor :name
  attr_reader :artist
  
  @@songs = []
  
  extend Findable

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
