const carousel = document.querySelector('.carousel');
const prevButton = document.querySelector('.prev-btn');
const nextButton = document.querySelector('.next-btn');
const cards = document.querySelectorAll('.parent');

let currentIndex = 0;
let timed_shifter = 0;

function setCardColour(){
    let j = 0;
    let increment = 360 / cards.length;

    for(let i = 0 ; i<cards.length ; i++){
        cards[i].setAttribute('style', `filter: hue-rotate(${j}deg);`); // Applica il filtro con j
        j += increment; // Incrementa j ad ogni iterazione, ad esempio di 30 gradi
    }


}

function removeFadeIn() {
    console.log("rimuovo");
    for (let i = 0; i < cards.length; i++) {
         cards[i].classList.remove('fade__in');
    }
}

function updateCarouselPosition() {
    console.log(timed_shifter);
    
    carousel.innerHTML = "";

    for (let i = 0; i < 3; i++) {
        const cardToShow = cards[(currentIndex + i) % cards.length];
        carousel.appendChild(cardToShow);
    }

    if (timed_shifter > 0) {
        removeFadeIn(); 
    }
    timed_shifter++;
}

function goToPrevious() {
    currentIndex = (currentIndex - 1 + cards.length) % cards.length;
    updateCarouselPosition();
}

function goToNext() {
    currentIndex = (currentIndex + 1) % cards.length;
    updateCarouselPosition();
}

prevButton.addEventListener('click', goToPrevious);
nextButton.addEventListener('click', goToNext);

carousel.addEventListener('wheel', (event) => {
    if (event.deltaY > 0) {
        goToNext();
    } else {
        goToPrevious();
    }
});


setCardColour();

updateCarouselPosition();
