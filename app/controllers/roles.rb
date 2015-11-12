get '/roles' do
  @roles = Role.all
  erb :'roles/index'
end

get '/roles/new' do
  erb :'roles/new'
end

post '/roles/new' do
  @role = Role.new(params[:role])
  if @role.save
    redirect '/roles'
  end
end

get '/roles/:id' do
  @role = Role.find(params[:id])
  erb :'roles/show'
end

get '/roles/:id/edit' do
  @role = Role.find(params[:id])
  erb :'roles/edit'
end

put '/roles/:id' do
  role = Role.find(params[:id])
  role.update_attributes(params[:role])
  redirect "roles/#{role.id}"
end

delete '/roles/:id' do
  role = Role.find(params[:id])
  role.destroy
  redirect '/roles'
end
