// JavaScript Document
/* RESPONSIVE TOPNAV - Skift mellem normal og dropdown version*/
function myFunction() {
  var x = document.getElementById("myTopnav")
  let header = document.getElementById("headerid")
  if (x.className === "topnav") {
    x.className += " responsive";
    header.style.display = "none"
  } else {
    x.className = "topnav";
  }
}
