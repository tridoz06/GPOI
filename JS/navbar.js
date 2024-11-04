const carousel = document.querySelector('.menu');
const prevButton = document.querySelector('.prev-btn');
const nextButton = document.querySelector('.next-btn');
const cards = document.querySelectorAll('.menu_item');

let currentIndex = 0;
let timed_shifter = 0;

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

prevButton.addEventListener('click', goToPrevious);
nextButton.addEventListener('click', goToNext);

carousel.addEventListener('wheel', (event) => {
    if (event.deltaY > 0) {
        goToNext();
    } else {
        goToPrevious();
    }
});

updateCarouselPosition();