const radios = document.querySelectorAll(".category");
const apparel = document.querySelector(".apparel-div");
const sneaker = document.querySelector(".sneaker-div");
import { apparelDiv } from './apparelDiv.js'
import { sneakerDiv } from './sneakerDiv.js'

// Implemented javascript function for responsive radio button to fill up new listing form.
// Using addEventListener to display hardcoded values for title, size and brand
// Feature implemented with Harrion's help
var count = 0;

function setOne(){
  count = 1;
}

function setTwo(){
  count = 2;
}

radios.forEach((radio) => {
  radio.addEventListener("click", (e) => {
    if (e.target.value === "apparel") {
      const sneakerSelect = document.querySelector(".sneaker-select");
      if (sneakerSelect) {
        sneakerSelect.parentNode.removeChild(sneakerSelect);
      }
      if (count === 2 || count === 0) {
        apparel.insertAdjacentHTML("afterbegin", apparelDiv);
      }
      setOne()
    } else {
      const apparelSelect = document.querySelector(".apparel-select");
      if (apparelSelect) {
        apparelSelect.parentNode.removeChild(apparelSelect);
      }
      if (count === 1 || count === 0) {
      sneaker.insertAdjacentHTML("afterbegin", sneakerDiv);
      }
      setTwo()
    }
  });
});
