<script>

  var ajax=new XMLHttpRequest();
  var method="GET";
  var url="data.php";
  var asynchronous=true;

  ajax.open(method,url,asynchronous);
  //send ajax request
  ajax.send();
  //get response
  var data = JSON.parse(this.responseText);
  ajax.onreadystatechange=function(){
    if (this.readyState == 4 && this.status==200){
      alert(this.responseText);
    }
  }
  /*
  //call ajax
  var ajax= new XMLHttpRequest();
  ajax.open('GET','data.php',true);
  //sending ajax request
  ajax.send();
  //receiving response from data.php
  ajax.onreadystatechange=function(){
  if(this.readyState==4 && this.status==200){
    //converting JSON BACK TO ARRAY
    var data = JSON.parse(this.responseText);
    console.log(data); // for debugging

    //html value
    }
  }
*/

</script>
