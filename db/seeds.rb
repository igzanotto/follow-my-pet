require "open-uri"

puts "Deleting appointments"
Appointment.destroy_all

puts "Deleting vaccinations"
Vaccination.destroy_all

puts "Deleting vaccines"
Vaccine.destroy_all

puts "Deleting studies"
Study.destroy_all

puts "Deleting clinical histories"
ClinicalHistory.destroy_all

puts "Deleting pets"
Pet.destroy_all

puts "Deleting species types"
SpeciesType.destroy_all

puts "Deleting messages"
Message.destroy_all

puts "Deleting chatrooms"
Chatroom.destroy_all

puts "Deleting users"
User.destroy_all

puts "Creating users"
vet1 = User.create!(email: "vet1@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary Boris", doctors: "Dr.Boris, Dr.Sebastien", phone: "+54659856523", location: "Caballito", longitude: -58.45, latitude: -34.61667, speciality: "Clinic, Bath, Radiology, Lab")
vet2 = User.create!(email: "vet2@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Dog Groomer and Bath Sebastien", doctors: "Dra. Carolina, Dra. Sofia", phone: "+65649856523", location: "Recoleta", longitude: 58.2326, latitude: 34.3526, speciality: "Bath")
vet3 = User.create!(email: "vet3@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary PetLover", doctors: "Dra. Clara, Dr. Lucas", phone: "+54659858623", location: "Mendoza", longitude: -68.8472, latitude: -32.8903, speciality: "Clinic, Surgery, Radiology, Lab")
vet4 = User.create!(email: "vet4@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Study and radiology center ScoobyDoo", doctors: "Dr. Juan Perez", phone: "+54659856523", location: "Santa Fe", longitude: 60.411680, latitude: 31.020240, speciality: "Clinic, Radiology, Nutrition, lab")
owner1 = User.create!(email: "sofi@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Sofi")
puts "Done"
owner2 = User.create!(email: "caro@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Caro")
puts "Done"
owner3 = User.create!(email: "clari@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Clara")
puts "Done"
owner4 = User.create!(email: "lucas@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Lucas")
puts "Done"

puts "Creating species types"
species1 = SpeciesType.create!(name: "Dog")
species2 = SpeciesType.create!(name: "Cat")
species3 = SpeciesType.create!(name: "Bird")
species4 = SpeciesType.create!(name: "Hamster")
puts "Done"

puts "Creating pets"
pet1 = Pet.create!(user: owner1, name: "Aurelia", species_type: species1, birthday: Date.tomorrow)
pet2 = Pet.create!(user: owner2, name: "Nelly", species_type: species2, birthday: Date.today)
pet3 = Pet.create!(user: owner3, name: "Lisa", species_type: species1, birthday: Date.tomorrow)
pet4 = Pet.create!(user: owner1, name: "Homero", species_type: species3, birthday: Date.today)
pet5 = Pet.create!(user: owner2, name: "Pepe", species_type: species2, birthday: Date.tomorrow)
pet6 = Pet.create!(user: owner3, name: "Lolo", species_type: species3, birthday: Date.today)
pet7 = Pet.create!(user: owner1, name: "Matilda", species_type: species2, birthday: Date.tomorrow)
pet8 = Pet.create!(user: owner4, name: "Kiki", species_type: species4, birthday: Date.today)
pet9 = Pet.create!(user: owner4, name: "Nelly", species_type: species1, birthday: Date.tomorrow)

puts "Done"

puts "Creating clinical histories"

ch1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Vino a vacunarse. Pesa 5kg.", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Le duelen los oidos. Le mande a hacer una radiografia.", date: Date.today, name: "Dolor oidos", type_of_history: "Consult")
ch3 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "Erupción", type_of_history: "Study")
ch4 = ClinicalHistory.create!(user: vet2, pet: pet4, description: "Tiene una erupción en la piel", date: Date.today, name: "Erupción", type_of_history: "Consult")
ch5 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

puts "Done"

puts "Creating appointments"
app1 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,25,4,5,6))
app2 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,26,4,5,6))
app3 = Appointment.create!(user: vet2, pet: pet1, start_time: DateTime.new(2022,9,27,4,5,6))
app4 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,28,4,5,6))
app5 = Appointment.create!(user: vet3, pet: pet1, start_time: DateTime.new(2022,9,22,4,5,6))
app6 = Appointment.create!(user: vet2, pet: pet3, start_time: DateTime.new(2022,9,21,4,5,6))
app7 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,20,4,5,6))
app8 = Appointment.create!(user: vet4, pet: pet3, start_time: DateTime.new(2022,9,15,4,5,6))
app9 = Appointment.create!(user: vet3, pet: pet1, start_time: DateTime.new(2022,9,16,4,5,6))
app10 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,17,4,5,6))
app11 = Appointment.create!(user: vet2, pet: pet3, start_time: DateTime.new(2022,9,18,4,5,6))
app12 = Appointment.create!(user: vet4, pet: pet2, start_time: DateTime.new(2022,9,19,4,5,6))
app13 = Appointment.create!(user: vet2, pet: pet1, start_time: DateTime.new(2022,9,10,4,5,6))
app14 = Appointment.create!(user: vet3, pet: pet2, start_time: DateTime.new(2022,9,11,4,5,6))

puts "Done"

puts "Creating vaccines"
vaccine1 = Vaccine.create!(name: "Rabies")
vaccine2 = Vaccine.create!(name: "Parvovirus")
vaccine3 = Vaccine.create!(name: "Distemper")
vaccine4 = Vaccine.create!(name: "DHPP")
vaccine6 = Vaccine.create!(name: "Coronavirus")
vaccine7 = Vaccine.create!(name: "Leptospirosis")
vaccine8 = Vaccine.create!(name: "Influenza")
vaccine9 = Vaccine.create!(name: "Lyme disease")

puts "Done"

puts "Creating vaccinations"
vaccination1 = Vaccination.create!(vaccine: vaccine1, clinical_history: ch1, expiration_date: Date.today)
vaccination2 = Vaccination.create!(vaccine: vaccine2, clinical_history: ch1, expiration_date: Date.today)
file1 = URI.open("http://www.dogobedience.co.nz/wp-content/uploads/2018/07/Bordetella.png")
file2 = URI.open("https://www.hellodog.hk/wp-content/themes/html5blank/img/dhppi.png")
vaccination1.photo.attach(io: file1, filename: "Bordetella.png", content_type: "image/png")
vaccination2.photo.attach(io: file2, filename: "dhppi.png", content_type: "image/png")
puts "Done"

puts "Creating studies"

study1 = Study.create!(clinical_history: ch2, name: "Radiology")
study2 = Study.create!(clinical_history: ch3, name: "Lab results")
file3 = URI.open("https://c8.alamy.com/zoomses/9/df223ade4a414db5ab83c4fc6c7034d3/2bx8hbx.jpg")
file4 = URI.open("https://thumbs.dreamstime.com/z/resultado-del-an%C3%A1lisis-de-sangre-12613767.jpg")
study1.photo.attach(io: file3, filename: "2bx8hbx.jpg", content_type: "image/jpg")
study2.photo.attach(io: file4, filename: "resultado-del-análisis-de-sangre-12613767.jpg", content_type: "image/jpg")
puts "Done"

puts "Creating chatrooms"
chatroom = Chatroom.create!(name: "General")
puts "Done"
