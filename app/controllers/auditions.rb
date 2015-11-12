get '/auditions' do
	@auditions = Audition.all
	erb :'auditions/index'
end

get '/auditions/new' do
	erb :'auditions/new'
end

post '/auditions/new' do
	@audition = Audition.new(params[:audition])
	if @audition.save
		redirect '/auditions'
	end
end

get '/auditions/:id' do
	@audition = Audition.find(params[:id])
	erb :'auditions/show'
end

get '/auditions/:id/edit' do
	@audition = Audition.find(params[:id])
	erb :'auditions/edit'
end

put '/auditions/:id' do
	audition = Audition.find(params[:id])
	audition.update_attributes(params[:audition])
	redirect "auditions/#{audition.id}"
end

delete '/auditions/:id' do
  audition = Audition.find(params[:id])
  audition.destroy
  redirect '/auditions'
end
