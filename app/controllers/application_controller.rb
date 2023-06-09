class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/songs" do 
    Song.all.to_json
  end
  get "/songs/:id" do 
    song=Song.find(params[:id])
    song.to_json
  end

  post "/songs" do 
    Song.create(
      title: params[:title],
      type: params[:type],
      genre: params[:genre],
      description: params[:description],
      release_date: params[:release_date],
      image_path: params[:image_path],
      artist_id: params[:artist_id]
    ).to_json
  end



  get "/artists" do 
    Artist.all.to_json
  end

  get "/artists/:id" do 
    artist=Artist.find(params[:id])
    artist.to_json
  end
  get '/artists/:id/songs' do
    artist = Artist.find(params[:id])
    artist_songs = artist.songs.to_json
    artist_songs
  end

  get "/comments" do
    Comment.all.to_json 
  end

  get "/comments/:id" do
  comment=Comment.find(params[:id])
  comment.to_json
  end

  post "/comments" do
    Comment.create(
      comment: params[:comment],
      likes: params[:likes],
      song_id: params[:song_id]
    ).to_json
  end

  get "/genres/:genre/songs" do
    genre_songs = Song.where(genre: params[:genre])
    genre_songs.to_json
  end
  get "/genres" do
    Song.distinct.pluck(:genre).to_json
  end

  delete "/songs/:id" do
    song = Song.find(params[:id])
    song.destroy
    { message: "Song deleted successfully" }.to_json
  end
  
  delete "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.destroy
    { message: "Comment deleted successfully" }.to_json
  end
  
  put '/songs/:id' do
    song = Song.find(params[:id])
    song.update(
      title: params[:title],
      image_path: params[:image_path],
    )
    song.to_json
  end
  



end
