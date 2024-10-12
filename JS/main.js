const carousel = document.querySelector('.carousel');
const prevButton = document.querySelector('.prev-btn');
const nextButton = document.querySelector('.next-btn');
const cards = document.querySelectorAll('.parent');

let currentIndex = 0;
let timed_shifter = 0;
// Funzione per rimuovere la classe fade__in
function removeFadeIn() {
    console.log("rimuovo");
    for (let i = 0; i < cards.length; i++) {
         cards[i].classList.remove('fade__in');
    }
}

// Funzione per aggiornare la posizione del carosello
function updateCarouselPosition() {
    // Rimuovi le carte non visibili
    carousel.innerHTML = "";

    // Aggiungi solo le carte visibili
    for (let i = 0; i < 3; i++) {
        const cardToShow = cards[(currentIndex + i) % cards.length];
        carousel.appendChild(cardToShow);
    }

    // Rimuovi la classe fade__in solo dopo il primo aggiornamento
    if (timed_shifter > 0) {
        removeFadeIn(); 
    }
    timed_shifter++;
}

// Funzione per andare indietro
function goToPrevious() {
    currentIndex = (currentIndex - 1 + cards.length) % cards.length;
    updateCarouselPosition();
}

// Funzione per andare avanti
function goToNext() {
    currentIndex = (currentIndex + 1) % cards.length;
    updateCarouselPosition();
}

// Event listeners per i bottoni
prevButton.addEventListener('click', goToPrevious);
nextButton.addEventListener('click', goToNext);

carousel.addEventListener('wheel', (event) => {
    if (event.deltaY > 0) {
        goToNext(); // Scroll verso il basso, mostra la prossima card
    } else {
        goToPrevious(); // Scroll verso l'alto, mostra la card precedente
    }
});

// Aggiungi fade in quando la pagina viene caricata

updateCarouselPosition();
