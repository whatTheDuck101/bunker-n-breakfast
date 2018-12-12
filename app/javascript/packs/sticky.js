window.onscroll = function() {
  nav();
  titleCard();
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
