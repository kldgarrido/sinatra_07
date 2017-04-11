require 'sinatra'


get '/greeting' do
	
	msj = check(params[:'msj'])
	erb :answer, :locals => {:msj => msj}
end


get '/' do
	erb :'form'
end 


 def check(str_msj)
 	if str_msj == str_msj.upcase
 		'Ahhh si, manzanas!' 
 	else
 		'Habla más duro mijito'
	end
 end