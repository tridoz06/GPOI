const cards = document.querySelectorAll('.parent');

function setCardColour(){
    let j = 0;
    let increment = 360 / cards.length;

    for(let i = 0 ; i<cards.length ; i++){
        cards[i].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
        j += increment; 
    }

}

setCardColour();