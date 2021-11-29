function myFunction(){
  var checkBox = document.getElementById("myCheck");
  var button = document.getElementById("demo");
  if (checkBox.checked == true){
    button.style.display = "pointer";
  } else{
    button.style.display = "none";
  }
}
