// connected to index.html in chameleon directory
// paired with Tom Ho

var a = document.getElementsByTagName("li");


for (var i = 0; i < a.length; i++) {
  a[i].style.backgroundColor = "yellow"
}

function hoverOver(event) {
	var photo = document.getElementById("lizard-photo");
	photo.style.border = "3px solid green";
}

function hoverOff(event) {
	var photo = document.getElementById("lizard-photo");
	photo.style.border = "none";
}


var photo = document.getElementById("lizard-photo");
photo.addEventListener("mouseover", hoverOver);
photo.addEventListener("mouseout", hoverOff);