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

puts "Deleting users"
User.destroy_all

puts "Creating users"
vet1 = User.create!(email: "vet1@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary Boris", doctors: "Dr.Boris, Dr.Sebastien", phone: "+54659856523", location: "Caballito", longitude: -58.45, latitude: -34.61667)
vet2 = User.create!(email: "vet2@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Dog Groomer and Bath Sebastien", doctors: "Dra. Carolina, Dra. Sofia", phone: "+65649856523", location: "Recoleta", longitude: 58.2326, latitude: 34.3526)
vet3 = User.create!(email: "vet3@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary PetLover", doctors: "Dra. Clara, Dr. Lucas", phone: "+54659858623", location: "Mendoza", longitude: -68.8472, latitude: -32.8903)
vet4 = User.create!(email: "vet4@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Study and radiology center ScoobyDoo", doctors: "Dr. Juan Perez", phone: "+54659856523", location: "Santa Fe", longitude: 60.411680, latitude: 31.020240)
owner1 = User.create!(email: "sofi@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Sofi")
puts "Done"
owner2 = User.create!(email: "caro@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Caro")
puts "Done"
owner3 = User.create!(email: "clara@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Clara")
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
pet2 = Pet.create!(user: owner1, name: "Nelly", species_type: species2, birthday: Date.today)
pet3 = Pet.create!(user: owner1, name: "Lisa", species_type: species1, birthday: Date.tomorrow)
pet4 = Pet.create!(user: owner2, name: "Homero", species_type: species3, birthday: Date.today)
pet5 = Pet.create!(user: owner2, name: "Pepe", species_type: species2, birthday: Date.tomorrow)
pet6 = Pet.create!(user: owner3, name: "Lolo", species_type: species3, birthday: Date.today)
pet7 = Pet.create!(user: owner3, name: "Matilda", species_type: species2, birthday: Date.tomorrow)
pet8 = Pet.create!(user: owner4, name: "Kiki", species_type: species4, birthday: Date.today)
pet9 = Pet.create!(user: owner4, name: "Nelly", species_type: species1, birthday: Date.tomorrow)

puts "Done"

puts "Creating clinical histories"

ch1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Vino a vacunarse. Pesa 5kg.", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Le duelen los oidos. Le mande a hacer una radiografia.", date: Date.today, name: "Dolor oidos", type_of_history: "Consult")
ch3 = ClinicalHistory.create!(user: vet1, pet: pet2, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "Erupción", type_of_history: "Study")
ch4 = ClinicalHistory.create!(user: vet2, pet: pet2, description: "Tiene una erupción en la piel", date: Date.today, name: "Erupción", type_of_history: "Consult")
ch5 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

puts "Done"

puts "Creating appointments"
app1 = Appointment.create!(user: vet1, pet: pet1, date: Date.today)
app2 = Appointment.create!(user: vet1, pet: pet2, date: Date.today)
app3 = Appointment.create!(user: vet2, pet: pet1, date: Date.tomorrow)
app4 = Appointment.create!(user: vet1, pet: pet2, date: Date.today)
app5 = Appointment.create!(user: vet3, pet: pet1, date: Date.tomorrow)
app6 = Appointment.create!(user: vet2, pet: pet3, date: Date.tomorrow)
app7 = Appointment.create!(user: vet1, pet: pet1, date: Date.today)
app8 = Appointment.create!(user: vet4, pet: pet3, date: Date.today)
app9 = Appointment.create!(user: vet3, pet: pet1, date: Date.tomorrow)
app10 = Appointment.create!(user: vet1, pet: pet2, date: Date.today)
app11 = Appointment.create!(user: vet2, pet: pet3, date: Date.tomorrow)
app12 = Appointment.create!(user: vet4, pet: pet2, date: Date.tomorrow)
app13 = Appointment.create!(user: vet2, pet: pet1, date: Date.today)
app14 = Appointment.create!(user: vet3, pet: pet2, date: Date.tomorrow)
puts "Done"

puts "Creating vaccines"
vaccine1 = Vaccine.create!(name: "rabies")
vaccine2 = Vaccine.create!(name: "covid")
vaccine3 = Vaccine.create!(name: "viruela")
vaccine4 = Vaccine.create!(name: "quintuple")

puts "Done"

puts "Creating vaccinations"
vaccination1 = Vaccination.create!(vaccine: vaccine1, clinical_history: ch1, expiration_date: Date.today)
vaccination2 = Vaccination.create!(vaccine: vaccine2, clinical_history: ch1, expiration_date: Date.today)
puts "Done"

puts "Creating studies"

study1 = Study.create!(clinical_history: ch1, name: "Radiology")
study2 = Study.create!(clinical_history: ch1, name: "Lab results")
puts "Done"
