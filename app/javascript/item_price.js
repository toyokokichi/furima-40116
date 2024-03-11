const calc = () => {
  const priceInput = document.getElementById("item-price");
  const addTaxDom = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");


  priceInput.addEventListener("input", () =>{
    const inputValue = priceInput.value;
    addTaxDom.innerHTML = Math.floor(inputValue*0.1);
    const addTaxValue = addTaxDom.innerHTML
    profit.innerHTML = Math.floor(inputValue - addTaxValue) ;
  })
};
window.addEventListener("turbo:load", calc);
