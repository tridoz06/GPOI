
const carousel = document.querySelector('.carousel');
const prevButton = document.querySelector('.prev-btn');
const nextButton = document.querySelector('.next-btn');
const cards = document.querySelectorAll('.parent');

const cardCount = cards.length;
const cardWidth = document.querySelector('.parent').offsetWidth;
const gap = 50;  

let currentIndex = 0;
let how_many_shift = 0;

// Aggiungi la classe fade__in solo alle card all'apertura della pagina
function addFadeIn() {
    for (let i = 0; i < cards.length; i++) {
        cards[i].classList.add('fade__in');
    }
}

// Funzione per rimuovere la classe fade__in
function removeFadeIn() {
    for (let i = 0; i < cards.length; i++) {
        cards[i].classList.remove('fade__in');
    }
}

// Funzione per aggiornare la posizione del carosello
function updateCarouselPosition() {
    // Incrementa il numero di spostamenti solo se non siamo all'inizio
    how_many_shift++;
    
    carousel.innerHTML = "";
    carousel.appendChild(cards[currentIndex % cards.length]);
    carousel.appendChild(cards[(currentIndex + 1) % cards.length]);
    carousel.appendChild(cards[(currentIndex + 2) % cards.length]);

    // Rimuovi la classe fade__in solo dopo il primo aggiornamento
    if (how_many_shift > 0) {
        removeFadeIn();
    }
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
addFadeIn();

updateCarouselPosition();
