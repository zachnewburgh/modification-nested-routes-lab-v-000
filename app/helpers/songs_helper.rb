module SongsHelper

  def song_artist_id(song)
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      f.hidden_field "song[artist_id]", song.artist_id
    end
  end

end