get '/' do
	@auditions = Audition.all
	erb :'index'
end

get '/auditions/new' do
	erb :'new'
end

post '/auditions/new' do
	@audition = Audition.new(params[:audition])
	if @audition.save
		redirect "/"
	end
end

get '/auditions/:id' do
	@audition = Audition.find(params[:id])
	erb :'show'
end

get '/auditions/:id/edit' do
	@audition = Audition.find(params[:id])
	erb :'/edit'
end

put '/auditions/:id' do
	audition = Audition.find(params[:id])
	audition.update_attributes(params[:audition])
	redirect "auditions/#{audition.id}"
end

delete '/auditions/:id' do
  audition = Audition.find(params[:id])
  audition.destroy
  redirect '/'
end