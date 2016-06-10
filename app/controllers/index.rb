get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @photos = Photo.all
  erb :index
end

post '/upload' do
	p "*" * 30
 	puts params[:photo][:photo]
 
 	foto = params[:photo]
 	p "*" * 50
 	@photo = Photo.new(foto)
 	p @photo
  @photo.save!

  redirect '/'
end
