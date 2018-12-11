window.onscroll = function() {
  nav();
  titleCard();
  newBunker();
};

// title show
var titleCard = document.querySelector(".title-card");
var sticky = titleCard.offsetTop;

function titleCard() {
  if (window.pageYOffset >= sticky) {
    titleCard.classList.add("sticky");
  } else {
    titleCard.classList.remove("sticky");
  }
}

// navbar
var nav = document.querySelector(".navbar-bunker");
var sticky = nav.offsetTop;

function nav() {
  if (window.pageYOffset >= sticky) {
    nav.classList.add("sticky");
  } else {
    nav.classList.remove("sticky");
  }
}

// new bunker
var newBunker = document.querySelector(".newbunker-content");
var sticky = newBunker.offsetTop;

function newBunker() {
  if (window.pageYOffset >= sticky) {
    newBunker.classList.add("sticky");
  } else {
    newBunker.classList.remove("sticky");
  }
}
