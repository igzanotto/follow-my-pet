// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import * as bootstrap from "bootstrap"


window.bootstrap = bootstrap

// console.log("hola desde aplication.js")

 const signUpVet = document.querySelector("#user_type_of_user_veterinary");

 const signUpOwner = document.querySelector("#user_type_of_user_pet_owner");


// console.log(signUpVet)

 signUpVet.addEventListener('click', (event) => {
  // console.log(event)
   const element = document.querySelector("#vet-forms");
  // console.log(element)
   element.classList.remove("d-none");
 });


 signUpOwner.addEventListener('click', (event) => {
  // console.log(event)
  const element = document.querySelector("#vet-forms");
  // console.log(element)
   element.classList.add("d-none");
 });
