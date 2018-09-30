function colorchange(id){
  var background=document.getElementById(id).style.backgroundColor;
  var conf=confirm("Are you sure you want to toggle "+id+" breaker?");

  if(conf){
      var valueContainer=document.getElementById("select4");
      var btn =document.getElementById("select3");
      btn.addEventListener("click", function(){
          var xml= new XMLHttpRequest();
          xml.open('GET', 'data1.json');
          xml.onload=function(){
              console.log(xml.responseText);
              var myData = JSON.parse(xml.responseText);
              myValue(myData);
          };
          xml.send();
      });
      function myValue(data){
          var myString="";
          var valueContainer=document.getElementById("select4");
          for (i=0; i<data.length; i++){
              //myString+= "<p>" + "My voltage is "+ data[i].voltage +
              //" and my current is "+data[i].current +"</p>";
              valueContainer.value=data[i].status;
              if(valueContainer.value=="7"){
                document.getElementById("select4").style.background="blue";
              }
              else if (valueContainer.value=="4"){
                document.getElementById("select4").style.background="red";
              }
              else{
                document.getElementById("select4").style.background="yellow";
              }
          }
          //valueContainer.insertAdjacentHTML('beforeend', myString);
      }
  }
  else {
      alert("nothing");
  }
}
