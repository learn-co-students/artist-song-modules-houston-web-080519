require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Paramable, Memorable::InstanceMethods

  #@@songs = []

  def initialize
    super
    @songs = []
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end


end

song = Song.new


