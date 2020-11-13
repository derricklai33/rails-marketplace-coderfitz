const radios = document.querySelectorAll(".category");
const apparel = document.querySelector(".apparel-div");
const sneaker = document.querySelector(".sneaker-div");
import { apparelDiv } from './apparelDiv.js'
import { sneakerDiv } from './sneakerDiv.js'

radios.forEach((radio) => {
  radio.addEventListener("click", (e) => {
    if (e.target.value === "apparel") {
      const sneakerSelect = document.querySelector(".sneaker-select");
      if (sneakerSelect) {
        sneakerSelect.parentNode.removeChild(sneakerSelect);
      }
      apparel.insertAdjacentHTML("afterbegin", apparelDiv);
    } else {
      const apparelSelect = document.querySelector(".apparel-select");
      if (apparelSelect) {
        apparelSelect.parentNode.removeChild(apparelSelect);
      }
      sneaker.insertAdjacentHTML("afterbegin", sneakerDiv);
    }
  });
});