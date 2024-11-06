const carousel = document.querySelector('.menu');

let prevButton;
let nextButton ;
let cards;

let page_titles;
let numero;

let currentIndex = 0;
let timed_shifter = 0;

const content = `<button class="prev-btn btn"><</button>
			
				<div class="menu_item">
					<a href="impresa.html" class="menu_item_link">Impresa</a>
					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="impresa.html#arg1"><li class="submenu_item menu_impresa">La parola impresa</li></a>
							<a class="submenu_item_link" href="impresa.html#arg2"><li class="submenu_item menu_impresa">L'impresa economica</li></a>
							<a class="submenu_item_link" href="impresa.html#arg3"><li class="submenu_item menu_impresa">Avere successo</li></a>
						</ul>
					</div>
				</div>


				<div class="menu_item">
					<a href="gestione_progetto.html" class="menu_item_link">Gestione progetto</a>
					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="gestione_progetto.html#arg1"><li class="submenu_item menu_gestione">Il progetto</li></a>
							<a class="submenu_item_link" href="gestione_progetto.html#arg2"><li class="submenu_item menu_gestione">WBS</li></a>
							<a class="submenu_item_link" href="gestione_progetto.html#arg3"><li class="submenu_item menu_gestione">Mappa di un progetto</li></a>
						</ul>
					</div>
				</div>


				<div class="menu_item">
					<a href="leader.html" class="menu_item_link">Leader</a>
					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="leader.html#arg1"><li class="submenu_item menu_leader">Il ruolo del leader</li></a>
							<a class="submenu_item_link" href="leader.html#arg2"><li class="submenu_item menu_leader">Qualità di un leader</li></a>
							<a class="submenu_item_link" href="leader.html#arg3"><li class="submenu_item menu_leader">Vari tipi di leader</li></a>
						</ul>
					</div>
				</div>

				<div class="menu_item">
					<a href="stellantis.html" class="menu_item_link">Stellantis</a>

					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="stellantis.html#arg1"><li class="submenu_item menu_leader">Stellantis top o flop?</li></a>
							<a class="submenu_item_link" href="stellantis.html#arg2"><li class="submenu_item menu_leader">Stellantis e il suo Flop</li></la>
							<a class="submenu_item_link" href="stellantis.html#arg3"><li class="submenu_item menu_leader">Dal flop della 500 e alla chiusura dello stabilimento Mirafiori</li></a>
						</ul>
					</div>

				</div>

				<div class="menu_item">
					<a href="pil.html" class="menu_item_link">Pil</a>
					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="pil.html#arg1"><li class="submenu_item menu_leader">Cos'è e a cosa serve</li></a>
							<a class="submenu_item_link" href="pil.html#arg2"><li class="submenu_item menu_leader">Come si calcola </li></a>
							<a class="submenu_item_link" href="pil.html#arg3"><li class="submenu_item menu_leader">Le sue criticità</li></a>
						</ul>
					</div>
				</div>

				<div class="menu_item">
					<a href="inflazione.html" class="menu_item_link">Inlfazione</a>
					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="inflazione.html#arg1"><li class="submenu_item menu_leader">La parola impresa</li></a>
							<a class="submenu_item_link" href="inflazione.html#arg2"><li class="submenu_item menu_leader">L'impresa economica </li></a>
							<a class="submenu_item_link" href="inflazione.html#arg3"><li class="submenu_item menu_leader">Avere successo</li></a>
						</ul>
					</div>
				</div>

				<div class="menu_item">
					<a href="scuola_impresa.html" class="menu_item_link">Scuola</a>
					<div class="hidden-div">
						<ul>
							<a class="submenu_item_link" href="scuola_impresa.html#arg1"><li class="submenu_item menu_leader">La scuola come impresa</li></a>
							<a class="submenu_item_link" href="scuola_impresa.html#arg2"><li class="submenu_item menu_leader">Perchè il dibattito è così acceso </li></a>
						</ul>
					</div>
				</div>

				<div class="menu_item">
					<a href="our_projects.html" class="menu_item_link">I Nostri Progetti</a>
				</div>

			<button class="next-btn btn">></button>
`;


function createNavbar(){
    carousel.innerHTML = content;

    prevButton = document.querySelector('.prev-btn');
    nextButton = document.querySelector('.next-btn');
    cards = document.querySelectorAll('.menu_item');
    page_titles = document.querySelectorAll('.arg_title');
    numero = document.querySelector('.page_number');


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

}

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

            for( let k = 0 ;  (page_titles.length==3)? (k<3):(k<2) ; k++){
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



createNavbar();


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
