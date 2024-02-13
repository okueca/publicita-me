import NestedForm from 'stimulus-rails-nested-form'

// Connects to data-controller="nested-form-posts"
export default class extends NestedForm {
  static targets = [ "links", "template" ]
  
  connect() {
    console.log("Fui iniciado")
  }

  add_association(event) {
    console.log("Fui clicado")
    event.preventDefault()
    var content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
    this.linksTarget.insertAdjacentHTML('beforebegin', content)
  }

  remove_association(event) {
    event.preventDefault()
    console.log("Fui delete")
    let wrapper = event.target.closest(".nested-form-posts")
    if (wrapper.dataset.newRecord == "true") {
      wrapper.remove()
    } else {
      wrapper.querySelector("input[name*='_destroy']").value = 1
      wrapper.style.display = 'none'
    } 
  }
}
