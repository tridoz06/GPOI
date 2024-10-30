const menu_items_color = document.querySelectorAll('.menu_item');
const h2 = document.querySelectorAll('.h2_title');

function setCardColour(){
    let j = 0;
    let increment = 360 / menu_items_color.length;

    for(let i = 0 ; i<menu_items_color.length ; i++){
        menu_items_color[i].setAttribute('style', `filter: hue-rotate(${j}deg);`); 

        j += increment; 
    }

}

setCardColour();