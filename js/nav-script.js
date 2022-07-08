const Nav = document.querySelector('.menu .bx-menu');
const menu = document.querySelector('.menu div');
Nav.onclick = ()=>{
    menu.style.display = "block";
    setTimeout(()=>{
        menu.style.opacity = "1";
        menu.style.right = "0";
    }, 50);   
}

document.onclick = (event)=>{
    if(event.target.classList != "menu-list" && event.target.className != "bx bx-menu" && window.innerWidth <= 820){
        menu.style.right = "-5rem";
        menu.style.opacity = "0";
        setTimeout(()=>{
            menu.style.display = "none";
        }, 500); 
    }
}

window.onresize = ()=>{
    if(window.innerWidth > 820){
        menu.style.opacity = "1";
        menu.style.display = "flex";
    }
    else{
        menu.style.opacity = "0";
        menu.style.display = "none";
        menu.style.right = "-5rem";
    }
}