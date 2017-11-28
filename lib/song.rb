require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  include Memorable::InstanceMethods
  


  def artist=(artist)
    @artist = artist
  end


  extend Memorable::ClassMethods
  extend Findable
  include Paramable

  def self.all
    @@songs
  end
end
