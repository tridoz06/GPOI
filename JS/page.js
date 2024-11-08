const carousel = document.querySelector('.menu');
const numero = document.querySelector('.page_number');

let prevButton;
let nextButton ;
let cards;

let page_titles;

let currentIndex = 0;
let timed_shifter = 0;


function setCardColour(){

    const classi = numero.classList;

    let numeroIntero = null;
    for (let classe of classi) {
        if (classe.startsWith('_')) {
            numeroIntero = parseInt(classe.substring(1), 10);
            break;
        }
    }


    let j = 0;
    let increment = 360 / cards.length;

    for(let i = 0 ; i<cards.length ; i++){
        cards[i].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
        
        if( i == numeroIntero){ 

            for( let k = 0 ; k<page_titles.length; k++){
                page_titles[k].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
            }
        }

        

        j += increment; 
    }

}

function updateCarouselPosition() {

    carousel.innerHTML = "";
        

    carousel.appendChild(prevButton);

    for (let i = 0; i < 3; i++) {
        const cardToShow = cards[(currentIndex + i) % cards.length];
        carousel.appendChild(cardToShow);
    }

    carousel.appendChild(nextButton);

}

function goToPrevious() {
    currentIndex = (currentIndex - 1 + cards.length) % cards.length;
    updateCarouselPosition();
}

function goToNext() {
    currentIndex = (currentIndex + 1) % cards.length;
    updateCarouselPosition();
}



document.addEventListener("DOMContentLoaded", () => {
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add("visible");
            } else {
                entry.target.classList.remove("visible");
            }
        });
    }, {
        threshold: 0.01// Trigger quando il 10% dell'elemento è visibile
    });

    // Osserva tutti gli elementi con le classi specificate
    document.querySelectorAll('.text.left, .image.right, .text.right, .image.left').forEach((el) => observer.observe(el));
});
