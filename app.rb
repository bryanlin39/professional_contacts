require('sinatra')
require('sinatra/reloader')
require('./lib/address')
require('./lib/contact')
require('./lib/email')
require('./lib/phone')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/contacts') do
  new_first_name = params[:first_name]
  new_last_name = params[:last_name]
  new_job = params[:job]
  new_company = params[:company]
  new_contact = Contact.new({:first_name=> new_first_name, :last_name=> new_last_name, :job=> new_job, :company=> new_company})
  new_contact.save()
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/:id') do
  @contact = Contact.find(params[:id])
  erb(:contact)
end

post('/contacts/:id') do
  @contact = Contact.find(params[:id])
  if (params[:street] != nil) && (params[:city] != nil) && (params[:state] != nil)
    new_street = params[:street]
    new_city = params[:city]
    new_state = params[:state]
    new_address = Address.new({:street=> new_street, :city=> new_city, :state=> new_state})
    @contact.add_address(new_address)
  end
  if params[:number] != nil
    new_number = params[:number]
    new_phone = Phone.new({:number=> new_number})
    @contact.add_phone(new_phone)
  end
  if params[:email] != nil
    new_email_address = params[:email]
    new_email = Email.new({:address=> new_email_address})
    @contact.add_email(new_email)
  end
  erb(:contact)
end
