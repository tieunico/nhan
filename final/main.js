/**********************************
* Connects to cRIOs (JQuery magic)
***********************************/
$(document).ready(function(){
  $(".btn").click(function(){
    if (confirm("Are you sure you want to toggle "+this.name+" breaker?")){
      $.ajax({
        type: "GET",
        url: "connect_simulator.php",
        data: {id:this.name, op:this.value},        //params to pass
        async: true
      });
    }
  });
});

/*************************
 * Toggles the textboxes
 *************************/
function toggleNfo(){
  var txtBoxes=document.getElementsByClassName('txtBox'), i;
  for (var i=0; i<txtBoxes.length-2; i++) {
    if (txtBoxes[i].style.display=='none'){
      txtBoxes[i].style.display='block';
    }
    else {
      txtBoxes[i].style.display = 'none';
    }
  }
}
/****************************************************************************
* Queries DB every 2 seconds and generates JSON data for breaker parameters
* changes button color based on params: really ugly implementation but works
****************************************************************************/
setInterval(function(){
  $.getJSON("mydata.php",function(data){
    for (var i=0;i<data.length;i++){
      var statusID="button#bay"+(i+1);
      var voltID="bay"+(i+1)+"_v";
      var currID="bay"+(i+1)+"_c";
      var realPoID="bay"+(i+1)+"_realPo";
      var reactPoID="bay"+(i+1)+"_reactPo";
      //console.log(data);
      //console.log(txtboxID);
      //console.log(i); //debugola
      document.getElementById(voltID).innerHTML=data[i].voltage+' V';
      document.getElementById(currID).innerHTML=data[i].current+' A';
      document.getElementById(realPoID).innerHTML=data[i].power+' W';
      document.getElementById(reactPoID).innerHTML=data[i].reactive_power+' var';
      if(data[i].status == 1){
        $(statusID).css('background-color','red');
        $(statusID).val('OPEN');
      }
      else if(data[i].status == 0){
        $(statusID).css('background-color','green');
        $(statusID).val('CLOSE');
      }
      else{
        $(statusID).css('background-color','yellow');
        $(statusID).val('-1');
      }
    }
  });
}, 2000)
