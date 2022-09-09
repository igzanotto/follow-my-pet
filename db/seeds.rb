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

puts "Deleting reviews"
Review.destroy_all

puts "Deleting users"
User.destroy_all

puts "Creating users-veterinaries"

vet1 = User.new(email: "vetboris@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary Boris", doctors: "Dr.Boris, Dr.Sebastien", phone: "+54659856523", location: "Rosario 866, Caballito, Caballito - Buenos Aires, C1424, Argentina", longitude: -58.44040919589571, latitude: -34.6204369051543, speciality: ["Clinic", "Radiology", "Nutrition", "Lab"])

vet2 = User.new(email: "vet2@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Dog Groomer and Bath Sebastien", doctors: "Dra. Carolina, Dra. Sofia", phone: "+65649856523", location: "Vicente López 2050, Recoleta, Recoleta - Buenos Aires, 1113, Argentina", longitude: -58.39389188679799, latitude: -34.58899706114716, speciality: ["Bath"])

vet3 = User.new(email: "vet3@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary PetLover", doctors: "Dra. Clara, Dr. Lucas", phone: "+54659858623", location: "Conde 851, Colegiales, Comuna 13 - Buenos Aires, C1426, Argentina", longitude: -58.45070309805917, latitude: -34.57620440510802, speciality: ["Clinic", "Radiology", "Nutrition", "Lab"])

vet4 = User.new(email: "vet4@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Study and radiology center ScoobyDoo", doctors: "Dr. Juan Perez", phone: "+54659856523", location: "Montañeses 2325, Belgrano, Comuna 13 - Buenos Aires, C1428, Argentina", longitude: -58.45143352340671, latitude: -34.55786660903639, speciality: ["Clinic", "Radiology"])

vet5 = User.new(email: "vet5@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Small Dog Center", doctors: "Dr. Juan Perez", phone: "+54659856523", location: "Rojas 599, Caballito, Caballito - Buenos Aires, C1405, Argentina", longitude: -58.44407448865364, latitude: -34.61392894396332, speciality: ["Clinic", "Radiology"])

vet6 = User.new(email: "vet6@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Happy Dog Clinic", doctors: "Dr. Juan Perez", phone: "+54659856523", location: "Avenida Rivadavia 5108, Caballito, Caballito - Buenos Aires, C1424CET, Argentina", longitude: -58.43746306588173, latitude: -34.619018951851785, speciality: ["Clinic", "Radiology", "Nutrition", "Lab"])

vet1.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/borisclinic.png')), filename: 'borisclinic.png')
vet2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/sebastien.png')), filename: 'sebastien.png')
vet3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/petlover.png')), filename: 'petlover.png')
vet4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/scooby.png')), filename: 'scooby.png')
vet5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/smalldog.png')), filename: 'smalldog.png')
vet6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/happydog.png')), filename: 'happydog.png')

vet1.save!
vet2.save!
vet3.save!
vet4.save!
vet5.save!
vet6.save!

puts "Done"

puts "Creating users-pet-owners"
sofi = URI.open("https://ca.slack-edge.com/T02NE0241-U03NNS0RVHV-f5e916a99167-512")
caro = URI.open("https://ca.slack-edge.com/T02NE0241-U03NS6EMXFY-e01b612d5e07-512")
clari = URI.open("https://ca.slack-edge.com/T02NE0241-U03PQPPGXUG-abbe6fa51dcc-512")
lu = URI.open("https://ca.slack-edge.com/T02NE0241-U03PBS9AV17-a13d8e7e6e83-512")

owner1 = User.create!(email: "sofi@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Sofi Larrea", phone: "+54 9 2615 98-3680")
owner2 = User.create!(email: "caro@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Caro Arlia", phone: "+34 691 34 58 23")
owner3 = User.create!(email: "clari@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Clari Ursini", phone: "+54 9 1149608212")
owner4 = User.create!(email: "lucas@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Lucas Cappa", phone: "+54 9 11 6371-5073")

owner1.photo.attach(io: sofi, filename: "Sofi.png", content_type: "image/png")
owner2.photo.attach(io: caro, filename: "Caro.png", content_type: "image/png")
owner3.photo.attach(io: clari, filename: "Clari.png", content_type: "image/png")
owner4.photo.attach(io: lu, filename: "Lu.png", content_type: "image/png")
puts "Done"

puts "Creating species types"
species1 = SpeciesType.create!(name: "Dog")
species2 = SpeciesType.create!(name: "Cat")
species3 = SpeciesType.create!(name: "Bird")
species4 = SpeciesType.create!(name: "Hamster")
puts "Done"

puts "Creating pets"
pet1 = Pet.new(user: owner1, name: "Aurelia", species_type: species1, birthday: DateTime.new(2020,9,12))
pet2 = Pet.new(user: owner4, name: "Ramon", species_type: species2, birthday: DateTime.new(2019,8,13))
pet3 = Pet.new(user: owner3, name: "Lisa", species_type: species1, birthday: DateTime.new(2018,8,15))
pet4 = Pet.new(user: owner1, name: "Homero", species_type: species3, birthday: DateTime.new(2017,5,25))
pet5 = Pet.new(user: owner2, name: "Pepe", species_type: species2, birthday: DateTime.new(2020,4,13))
pet6 = Pet.new(user: owner3, name: "Lolo", species_type: species3, birthday: DateTime.new(2017,8,10))
pet7 = Pet.new(user: owner1, name: "Matilda", species_type: species2, birthday: DateTime.new(2022,2,22))
pet8 = Pet.new(user: owner4, name: "Kiki", species_type: species4, birthday: DateTime.new(2019,7,16))
pet9 = Pet.new(user: owner3, name: "Nelly", species_type: species1, birthday: DateTime.new(2018,8,13))
pet10 = Pet.new(user: owner1, name: "Flippy", species_type: species2, birthday: DateTime.new(2020,4,25))
pet11 = Pet.new(user: owner4, name: "Bernardo", species_type: species2, birthday: DateTime.new(2016,7,22))
pet12 = Pet.new(user: owner3, name: "Benicio", species_type: species2, birthday: DateTime.new(2019,5,15))

perro1 = URI.open("https://images.unsplash.com/photo-1587300003388-59208cc962cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
gatoverde = URI.open("https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=843&q=80")
perromarron = URI.open("https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80")
canario = URI.open("https://images.unsplash.com/photo-1591198936750-16d8e15edb9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")
gatochico = URI.open("https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80")
papagayo = URI.open("https://images.unsplash.com/photo-1604826010917-65cf53d6249b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
gatomimo = URI.open("https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
hamster = URI.open("https://images.unsplash.com/photo-1560534493-fca50fa9bfe1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
perronegro = URI.open("https://images.unsplash.com/photo-1547569026-e7e7c51be6f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=433&q=80")
perrozapatilla = URI.open("https://images.unsplash.com/photo-1605017446089-6576ace65223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
dalmata = URI.open("https://images.unsplash.com/photo-1532022160153-7735cd049992?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80")
perrobyn = URI.open("https://images.unsplash.com/photo-1605117085884-817eae85c5eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1073&q=80")



pet1.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/home.jpg')), filename: 'perrohome.jpg')
pet2.photo.attach(io: gatoverde, filename: "Ramon.png", content_type: "image/png")
pet3.photo.attach(io: perro1, filename: "Lisa.png", content_type: "image/png")
pet4.photo.attach(io: canario, filename: "Homero.png", content_type: "image/png")
pet5.photo.attach(io: gatochico, filename: "Pepe.png", content_type: "image/png")
pet6.photo.attach(io: papagayo, filename: "Lolo.png", content_type: "image/png")
pet7.photo.attach(io: gatomimo, filename: "Matilda.png", content_type: "image/png")
pet8.photo.attach(io: hamster, filename: "Kiki.png", content_type: "image/png")
pet9.photo.attach(io: perronegro, filename: "Nelly.png", content_type: "image/png")
pet10.photo.attach(io: perrozapatilla, filename: "Flippy.png", content_type: "image/png")
pet11.photo.attach(io: dalmata, filename: "Bernardo.png", content_type: "image/png")
pet12.photo.attach(io: perrobyn, filename: "Benicio.png", content_type: "image/png")

pet1.save!
pet2.save!
pet3.save!
pet4.save!
pet5.save!
pet6.save!
pet7.save!
pet8.save!
pet9.save!
pet10.save!
pet11.save!
pet12.save!

puts "Done"

puts "Creating clinical histories"

ch1pet1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2022,8,19,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2022,8,12,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet1 = ClinicalHistory.create!(user: vet3, pet: pet1, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,4,1,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet1 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,12,17,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet1 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2021,6,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet1 = ClinicalHistory.create!(user: vet3, pet: pet1, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2020,7,13,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet1 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2021,6,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2020,7,18,11,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet2 = ClinicalHistory.create!(user: vet1, pet: pet2, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2022,7,11,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet2 = ClinicalHistory.create!(user: vet1, pet: pet2, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2022,3,12,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet2 = ClinicalHistory.create!(user: vet3, pet: pet2, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,3,13,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet2 = ClinicalHistory.create!(user: vet2, pet: pet2, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,5,1,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet2 = ClinicalHistory.create!(user: vet2, pet: pet2, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2021,1,25,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet2 = ClinicalHistory.create!(user: vet1, pet: pet2, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2020,5,14,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet2 = ClinicalHistory.create!(user: vet2, pet: pet2, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2021,3,11,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet2 = ClinicalHistory.create!(user: vet1, pet: pet2, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2020,1,11,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet3 = ClinicalHistory.create!(user: vet1, pet: pet3, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2022,7,11,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet3 = ClinicalHistory.create!(user: vet1, pet: pet3, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2022,4,15,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet3 = ClinicalHistory.create!(user: vet3, pet: pet3, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,3,13,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet3 = ClinicalHistory.create!(user: vet2, pet: pet3, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,5,1,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet3 = ClinicalHistory.create!(user: vet2, pet: pet3, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2021,1,25,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet3 = ClinicalHistory.create!(user: vet1, pet: pet3, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2020,5,14,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet3 = ClinicalHistory.create!(user: vet2, pet: pet3, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2021,3,11,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet3 = ClinicalHistory.create!(user: vet1, pet: pet3, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2020,1,11,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet4 = ClinicalHistory.create!(user: vet1, pet: pet4, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2022,7,12,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet4 = ClinicalHistory.create!(user: vet1, pet: pet4, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2022,8,1,15,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet4 = ClinicalHistory.create!(user: vet3, pet: pet4, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,3,16,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet4 = ClinicalHistory.create!(user: vet2, pet: pet4, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,5,25,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet4 = ClinicalHistory.create!(user: vet2, pet: pet4, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2021,1,25,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet4 = ClinicalHistory.create!(user: vet1, pet: pet4, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2020,5,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet4 = ClinicalHistory.create!(user: vet2, pet: pet4, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2021,3,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet4 = ClinicalHistory.create!(user: vet1, pet: pet4, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2020,1,12,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2022,1,12,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2021,12,1,15,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet5 = ClinicalHistory.create!(user: vet3, pet: pet5, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,5,16,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet5 = ClinicalHistory.create!(user: vet2, pet: pet5, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,6,25,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet5 = ClinicalHistory.create!(user: vet2, pet: pet5, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2021,7,25,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2020,8,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet5 = ClinicalHistory.create!(user: vet2, pet: pet5, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2021,9,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2020,10,12,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet6 = ClinicalHistory.create!(user: vet1, pet: pet6, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2021,9,25,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet6 = ClinicalHistory.create!(user: vet1, pet: pet6, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2022,8,12,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet6 = ClinicalHistory.create!(user: vet3, pet: pet6, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,4,1,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet6 = ClinicalHistory.create!(user: vet2, pet: pet6, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,12,17,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet6 = ClinicalHistory.create!(user: vet2, pet: pet6, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2021,6,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet6 = ClinicalHistory.create!(user: vet1, pet: pet6, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2020,7,13,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet6 = ClinicalHistory.create!(user: vet2, pet: pet6, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2021,6,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet6 = ClinicalHistory.create!(user: vet1, pet: pet6, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2020,7,18,11,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet7 = ClinicalHistory.create!(user: vet1, pet: pet7, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2020,9,25,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet7 = ClinicalHistory.create!(user: vet1, pet: pet7, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2021,8,12,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet7 = ClinicalHistory.create!(user: vet3, pet: pet7, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2020,4,1,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet7 = ClinicalHistory.create!(user: vet2, pet: pet7, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2022,1,17,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet7 = ClinicalHistory.create!(user: vet2, pet: pet7, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2022,6,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet7 = ClinicalHistory.create!(user: vet1, pet: pet7, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2022,7,13,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet7 = ClinicalHistory.create!(user: vet2, pet: pet7, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2022,6,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet7 = ClinicalHistory.create!(user: vet1, pet: pet7, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2019,7,18,11,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2020,9,25,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2021,8,12,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet8 = ClinicalHistory.create!(user: vet3, pet: pet8, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2020,4,1,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet8 = ClinicalHistory.create!(user: vet2, pet: pet8, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2022,1,17,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet8 = ClinicalHistory.create!(user: vet2, pet: pet8, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2022,6,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2022,7,13,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet8 = ClinicalHistory.create!(user: vet2, pet: pet8, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2022,6,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2019,7,18,11,0,6), name: "Blood Test", type_of_history: "Study")

ch1pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2021,9,25,11,0,6), name: "Vomiting/Upset Stomach", type_of_history: "Consult")
ch2pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "had a stone in the uterus which was removed surgically. Since then she was eating Urinary S/O.", date: DateTime.new(2022,8,12,11,0,6), name: "Uterus stone", type_of_history: "Consult")
ch3pet9 = ClinicalHistory.create!(user: vet3, pet: pet9, description: "Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2020,6,1,11,0,6), name: "Ear Infection", type_of_history: "Consult")
ch4pet9 = ClinicalHistory.create!(user: vet2, pet: pet9, description: "Treatment involves frequent bathing with a hypoallergenic shampoo, which may or may not contain anti-inflammatory ingredients. This not only soothes itchy and inflamed skin, but rinses off allergens that are present on the coat or on the skin. Anti-Inflammatory Therapy.", date: DateTime.new(2021,1,17,11,0,6), name: "Skin Allergies", type_of_history: "Consult")
ch5pet9 = ClinicalHistory.create!(user: vet2, pet: pet9, description: "Vaccines of the year. Rabies. Expiration date May 2023", date: DateTime.new(2022,4,18,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch6pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "Additional Vaccine. Bordetella. Expiration date May 2021", date: DateTime.new(2021,7,13,11,0,6), name: "Vaccines", type_of_history: "Vaccination")
ch7pet9 = ClinicalHistory.create!(user: vet2, pet: pet9, description: "Had a contusion in his head. Prescripted a Radiology to check for internal damage. Recommended to have a restricted diet.", date: DateTime.new(2020,7,14,11,0,6), name: "Consult and Radiology", type_of_history: "Study")
ch8pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "Came with an recurrent alergie, asked for a Blood test to check potential allergies. Prescripted corticosteroid 1mg.", date: DateTime.new(2022,7,18,11,0,6), name: "Blood Test", type_of_history: "Study")

puts "Done"
puts "Creating appointments"
app1 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,25,11,0,6))
app2 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,26,10,0,6))
app3 = Appointment.create!(user: vet2, pet: pet1, start_time: DateTime.new(2022,9,27,12,0,6))
app4 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,14,13,0,6))
app5 = Appointment.create!(user: vet3, pet: pet1, start_time: DateTime.new(2022,9,22,14,0,6))
app6 = Appointment.create!(user: vet2, pet: pet3, start_time: DateTime.new(2022,9,21,15,0,6))
app7 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,20,16,0,6))
app8 = Appointment.create!(user: vet4, pet: pet3, start_time: DateTime.new(2022,9,15,17,0,6))
app9 = Appointment.create!(user: vet3, pet: pet1, start_time: DateTime.new(2022,9,16,10,0,6))
app10 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,17,9,0,6))
app11 = Appointment.create!(user: vet2, pet: pet3, start_time: DateTime.new(2022,9,18,11,0,6))
app12 = Appointment.create!(user: vet4, pet: pet2, start_time: DateTime.new(2022,9,19,12,0,6))
app13 = Appointment.create!(user: vet2, pet: pet1, start_time: DateTime.new(2022,9,9,15,0,6))
app14 = Appointment.create!(user: vet3, pet: pet2, start_time: DateTime.new(2022,9,11,14,0,6))

app15 = Appointment.create!(user: vet1, pet: pet5, start_time: DateTime.new(2022,9,15,10,0,6))
app16 = Appointment.create!(user: vet2, pet: pet6, start_time: DateTime.new(2022,9,18,11,0,6))
app17 = Appointment.create!(user: vet4, pet: pet7, start_time: DateTime.new(2022,9,19,12,0,6))
app18 = Appointment.create!(user: vet2, pet: pet8, start_time: DateTime.new(2022,9,9,13,0,6))
app19 = Appointment.create!(user: vet3, pet: pet9, start_time: DateTime.new(2022,9,11,14,0,6))

app20 = Appointment.create!(user: vet2, pet: pet5, start_time: DateTime.new(2022,9,17,10,0,6))
app21 = Appointment.create!(user: vet3, pet: pet6, start_time: DateTime.new(2022,9,20,11,0,6))
app22 = Appointment.create!(user: vet2, pet: pet7, start_time: DateTime.new(2022,9,21,12,0,6))
app23 = Appointment.create!(user: vet4, pet: pet8, start_time: DateTime.new(2022,9,22,13,0,6))
app24 = Appointment.create!(user: vet4, pet: pet9, start_time: DateTime.new(2022,9,23,14,0,6))

app25 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,9,14,0,6))
app26 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,9,15,0,6))

puts "Done"

puts "Creating vaccines"
vaccine1 = Vaccine.create!(name: "Rabies")
vaccine2 = Vaccine.create!(name: "Parvovirus")
vaccine3 = Vaccine.create!(name: "Distemper")
vaccine4 = Vaccine.create!(name: "DHPP")
vaccine6 = Vaccine.create!(name: "Bordetella")
vaccine7 = Vaccine.create!(name: "Leptospirosis")
vaccine8 = Vaccine.create!(name: "Influenza")
vaccine9 = Vaccine.create!(name: "Lyme disease")

puts "Done"

puts "Creating vaccinations"
vaccination1 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet1, expiration_date: Date.new(2023,9,25))
vaccination2 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet2, expiration_date: Date.new(2023,8,25))
vaccination3 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet3, expiration_date: Date.new(2024,9,25))
vaccination4 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet4, expiration_date: Date.new(2023,7,22))
vaccination5 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet5, expiration_date: Date.new(2023,6,20))
vaccination6 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet6, expiration_date: Date.new(2024,9,11))
vaccination7 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet7, expiration_date: Date.new(2025,9,10))
vaccination8 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet8, expiration_date: Date.new(2023,5,22))
vaccination9 = Vaccination.new(vaccine: vaccine1, clinical_history: ch5pet9, expiration_date: Date.new(2023,9,23))

vaccination10 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet1, expiration_date: Date.new(202,10,24))
vaccination11 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet2, expiration_date: Date.new(2023,8,25))
vaccination12 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet3, expiration_date: Date.new(2024,9,25))
vaccination13 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet4, expiration_date: Date.new(2023,7,22))
vaccination14 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet5, expiration_date: Date.new(2023,6,20))
vaccination15 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet6, expiration_date: Date.new(2024,9,11))
vaccination16 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet7, expiration_date: Date.new(2025,9,10))
vaccination17 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet8, expiration_date: Date.new(2023,5,22))
vaccination18 = Vaccination.new(vaccine: vaccine6, clinical_history: ch6pet9, expiration_date: Date.new(2023,9,23))

bordetella = URI.open("http://www.dogobedience.co.nz/wp-content/uploads/2018/07/Bordetella.png")
parvovirus= URI.open("https://s28489.pcdn.co/wp-content/uploads/2019/02/p1b4h6r5cjefs19eq12ppqbpibo9.jpg")
rabies = URI.open("https://pubs.extension.wsu.edu/images/thumbs/0000703_550.jpeg")

vaccination1.photo.attach(io: bordetella, filename: "Bordetella.png", content_type: "image/png")
vaccination2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination7.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination8.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination9.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')

vaccination10.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination11.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination12.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination13.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination14.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination15.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination16.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination17.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination18.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')

vaccination1.save!
vaccination2.save!
vaccination3.save!
vaccination4.save!
vaccination5.save!
vaccination6.save!
vaccination7.save!
vaccination8.save!
vaccination9.save!
vaccination10.save!
vaccination11.save!
vaccination12.save!
vaccination13.save!
vaccination14.save!
vaccination15.save!
vaccination16.save!
vaccination17.save!
vaccination18.save!
puts "Done"

puts "Creating studies"
study1 = Study.new(clinical_history: ch7pet1, name: "Radiology")
study2 = Study.new(clinical_history: ch7pet2, name: "Radiology")
study3 = Study.new(clinical_history: ch7pet3, name: "Radiology")
study4 = Study.new(clinical_history: ch7pet4, name: "Radiology")
study5 = Study.new(clinical_history: ch7pet5, name: "Radiology")
study6 = Study.new(clinical_history: ch7pet6, name: "Radiology")
study7 = Study.new(clinical_history: ch7pet7, name: "Radiology")
study8 = Study.new(clinical_history: ch7pet8, name: "Radiology")
study9 = Study.new(clinical_history: ch7pet9, name: "Radiology")
study10 = Study.new(clinical_history: ch8pet1, name: "Lab results")
study11 = Study.new(clinical_history: ch8pet2, name: "Lab results")
study12 = Study.new(clinical_history: ch8pet3, name: "Lab results")
study13 = Study.new(clinical_history: ch8pet4, name: "Lab results")
study14 = Study.new(clinical_history: ch8pet5, name: "Lab results")
study15 = Study.new(clinical_history: ch8pet6, name: "Lab results")
study16 = Study.new(clinical_history: ch8pet7, name: "Lab results")
study17 = Study.new(clinical_history: ch8pet8, name: "Lab results")
study18 = Study.new(clinical_history: ch8pet9, name: "Lab results")

radiology = URI.open("https://c8.alamy.com/zoomses/9/df223ade4a414db5ab83c4fc6c7034d3/2bx8hbx.jpg")
lab = URI.open("https://thumbs.dreamstime.com/z/resultado-del-an%C3%A1lisis-de-sangre-12613767.jpg")
study1.photo.attach(io: radiology, filename: "2bx8hbx.jpg", content_type: "image/jpg")

study2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study7.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study8.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study9.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study10.photo.attach(io: lab, filename: "resultado-del-análisis-de-sangre-12613767.jpg", content_type: "image/jpg")
study11.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study12.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study13.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study14.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study15.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study16.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study17.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study18.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')

study1.save!
study2.save!
study3.save!
study4.save!
study5.save!
study6.save!
study7.save!
study8.save!
study9.save!
study10.save!
study11.save!
study1.save!
study13.save!
study14.save!
study15.save!
study16.save!
study17.save!
study18.save!

puts "Done"

puts "Creating chatrooms"
chatroom = Chatroom.create!(name: "General")
puts "Done"

puts "Creating reviews"
review1 = Review.create!(content: "Great Vet", rating: 4, user: vet1)
review1 = Review.create!(content: "Good experience", rating: 3, user: vet1)
review1 = Review.create!(content: "Awsome", rating: 5, user: vet1)

review1 = Review.create!(content: "More or less", rating: 3, user: vet2)
review1 = Review.create!(content: "Could be better", rating: 2, user: vet2)
review1 = Review.create!(content: "All right", rating: 2, user: vet2)

review1 = Review.create!(content: "Great Vet", rating: 4, user: vet3)
review1 = Review.create!(content: "All right", rating: 3, user: vet3)
review1 = Review.create!(content: "Everything ok", rating: 4, user: vet3)

review1 = Review.create!(content: "Bad experience", rating: 2, user: vet4)
review1 = Review.create!(content: "Could be better", rating: 3, user: vet4)
review1 = Review.create!(content: "All right", rating: 3, user: vet4)

puts "Done"

chatroom = Chatroom.create!(name: "Chat")
