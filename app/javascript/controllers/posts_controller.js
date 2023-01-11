import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log(this.element)
  }

  delete(event){
    let confirmed = confirm("Are you sure you want to delete this post?")
    if(!confirmed){
      event.preventDefault()
    }
  }
}
