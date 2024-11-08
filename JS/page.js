const carousel = document.querySelector('.menu');
const prevButton = document.querySelector('.prev-btn');
const nextButton = document.querySelector('.next-btn');
const cards = document.querySelectorAll('.menu_item');

const  page_titles = document.querySelectorAll('.arg_title');

let currentIndex = 0;
let timed_shifter = 0;


function setCardColour(){

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
        console.log( cards[(currentIndex + i) % cards.length] );
        const cardToShow = cards[(currentIndex + i) % cards.length];
        console.log( cardToShow );
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
        threshold: 0.01
    });


    document.querySelectorAll('.text.left, .image.right, .text.right, .image.left').forEach((el) => observer.observe(el));
});

console.log(numeroIntero);
setCardColour();
updateCarouselPosition();
