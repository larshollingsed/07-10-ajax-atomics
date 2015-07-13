var req = new XMLHttpRequest();



//  ---------------------------------------------------------------------------

var myLink = document.getElementById("clicker");

var handleTheClick = function(event){
  var thisLink = this;
  req.open("get", this.href);

  req.addEventListener("load", function(){
    thisLink.innerHTML = this.response;
  });

  req.send();
  
  // Prevent the link from refreshing the DOM.
  event.preventDefault();
}

// When the link is clicked, run the above code.
myLink.addEventListener("click", handleTheClick);