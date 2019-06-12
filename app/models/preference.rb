class Preference < ActiveRecord::Base
  attribute :song_sort_order, :string, default: "ASC"
  attribute :artist_sort_order, :string, default: "ASC"
  attribute :allow_create_songs, :boolean, default: true
  attribute :allow_create_artists, :boolean, default: true
end
