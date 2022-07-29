// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs

import "@hotwired/turbo-rails"
import "controllers"


const datePicker = document.getElementById("filter")
const myForm = document.getElementById("myForm")
datePicker.addEventListener("change", () => {
    myForm.submit()
})