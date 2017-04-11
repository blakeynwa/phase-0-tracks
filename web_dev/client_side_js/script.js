function changeCableColor(event) {
  event.target.style.color = "red";
}

var table = document.getElementById("tab");

table.addEventListener("mouseover", changeCableColor);
