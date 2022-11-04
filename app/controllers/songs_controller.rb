class SongsController < ApplicationController
  def index
    song = Song.all
    render json: song.as_json
  end

  def show
    song_id = params[:id]
    song = Song.find_by(id: song_id)
    render json: { artist: song.artist,
                   string: song.stringify }
  end

  def update
    song = Song.find_by(id: params[:id])
    song.lyrics = params[:lyrics] || song.name
    song.artist = params[:artist] || song.artist
    song.duration = params[:duration] || song.duration

    song.save
    render json: song.as_json
  end

  def create
    song = Song.create(
      artist: params[:artist],
      lyrics: params[:lyrics],
      duration: params[:lyrics],
    )
    render json: song.as_json
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { "message" => "Song successfully destroyed." }
  end
end
