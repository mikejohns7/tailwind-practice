// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "field" ]

  focus(e) {
    console.log(e.keyCode);
    if (e.keyCode == 191) {
      e.preventDefault();
      this.fieldTarget.focus();
    } else if (e.keyCode == 27) {
      this.fieldTarget.blur();
    }
  }
}
