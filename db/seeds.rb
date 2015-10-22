unless User.exists?( email: 'admin@ticketee.com' )
  User.create( email: 'admin@ticketee.com', password: 'password', admin: true )
end

unless User.exists?( email: 'visitor@ticketee.com' )
  User.create( email: 'visitor@ticketee.com', password: 'password')
end


['Sublime Text 3', 'Internet Explorer'].each do |name|
  Project.create!( name: name, description: "A sample project about #{name}.")
end
