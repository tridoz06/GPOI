const page_titles = document.querySelectorAll('.arg_title');
const menu_items_color = document.querySelectorAll('.menu_item');
const numero = document.querySelector('.page_number');

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
    let increment = 360 / menu_items_color.length;

    for(let i = 0 ; i<menu_items_color.length ; i++){
        menu_items_color[i].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
        
        if( i == numeroIntero){ 

            for( let k = 0 ;  k< 3 ; k++){
                page_titles[k].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
            }
        }

        

        j += increment; 
    }

}



setCardColour();