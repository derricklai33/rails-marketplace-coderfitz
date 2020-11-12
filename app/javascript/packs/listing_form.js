const radios = document.querySelectorAll(".category")
const apparel = document.querySelector(".apparel-div")
const sneaker = document.querySelector(".sneaker-div")
radios.forEach((radio) => {
  radio.addEventListener("click", (e) => {
    if(e.target.value === "apparel"){
      sneaker.style.display = "none"
      apparel.style.display = "block"
    }
    else{
      apparel.style.display = "none"
      sneaker.style.display = "block"
    }
  })
});