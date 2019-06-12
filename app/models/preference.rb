class Preference < ActiveRecord::Base
  attribute :song_sort_order, :string, default: "ASC"
  attribute :artist_sort_order, :string, default: "ASC"
end
