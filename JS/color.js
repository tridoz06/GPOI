const menu_items_color = document.querySelectorAll('.menu_item');
const page_titles = document.querySelectorAll('.arg_title');

function setCardColour(){
    let j = 0;
    let increment = 360 / menu_items_color.length;

    for(let i = 0 ; i<menu_items_color.length ; i++){
        menu_items_color[i].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
        
        for( let k = 3*i ; k< ( (i+1)*3) ; k++){
            page_titles[k].setAttribute('style', `filter: hue-rotate(${j}deg);`); 
        }

        j += increment; 
    }

}



setCardColour();