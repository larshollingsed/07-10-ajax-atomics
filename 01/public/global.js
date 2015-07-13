var req = new XMLHttpRequest();

// For 'Exercise 2', you will modify this line:
req.open("get", "/info1");

req.addEventListener("loadstart", function(){
  console.log("loadstart");
});

req.addEventListener("load", function(){
  alert(req.response);
});

req.send();
