/**********************************
* Connects to cRIOs (JQuery magic)
* +generic browser confirmation
***********************************/
$(document).ready(function(){
  $(".btn").click(function(){
    if (confirm("Are you sure you want to toggle "+this.name+" breaker?")){
      $.ajax({
        type: "GET",
        url: "connect_simulator.php",
        data: { id:this.name, op:this.value },        //params to pass
        async: true
      });
    }
  });
});

/**********************************************
 * Toggles display of the parameter textboxen
 *********************************************/
function toggleNfo(){
  var txtBoxes=document.getElementsByClassName('txtBox'), i;
  for (var i=0; i<txtBoxes.length-1; i++) {         //-2 ignores aux/tie brkrs
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
* changes button color based on params: really ugly implementation but works...
* uses JSON index to determine associated breaker
****************************************************************************/
setInterval(function(){
  $.getJSON("mydata.php",function(data){
    for (var i=0;i<data.length;i++){
      var statusID="button#bay"+(i+1);
      var voltID="bay"+(i+1)+"_v";
      var currID="bay"+(i+1)+"_c";
      var realPoID="bay"+(i+1)+"_realPo";
      var reactPoID="bay"+(i+1)+"_reactPo";
      //console.log(data);      //debug
      //console.log(txtboxID);
      //console.log(i); //debugola
      document.getElementById(voltID).innerHTML=data[i].voltage+' V';
      document.getElementById(currID).innerHTML=data[i].current+' A';
      document.getElementById(realPoID).innerHTML=data[i].power+' W';
      document.getElementById(reactPoID).innerHTML=data[i].reactive_power+' var';
      if(data[i].status == 1){                                    //brkr closed
        $(statusID).css('background-color','red');      //set background to red for dead
        $(statusID).val('OPEN');                                  //cmd = OPEN
      }
      else if(data[i].status == 0){
        $(statusID).css('background-color','green');
        $(statusID).val('CLOSE');
      }
      else{
        $(statusID).css('background-color','yellow');  //undefined breaker state
        $(statusID).val('-1');
      }
    }
  });
}, 2000)
/****************************************************************************
* Display 6 latest command from north and south in console window
* Index 0-2 are north command
* Index 3-5 are south command
*****************************************************************************/
setInterval(function(){
    $.getJSON("cmd_data.php", function(data){
        for(var i=0; i<data.length; i++){
          var tsNorth="northTime"+i;
          var cmdNorth="northCmd"+i;
          var tsSouth="southTime"+i;
          var cmdSouth="southCmd"+i;
          var msgTime="sysTime"+i;
          var msg="sysMsg"+i;

          //console.log(data);    //debug
          if (i<5){
            document.getElementById(tsNorth).innerHTML=data[i].timestamp+"\t";
            document.getElementById(cmdNorth).innerHTML=data[i].command;
          }
          else if (i>4 && i<10){    //4<i<10){ //i guess this doesnt work
            document.getElementById(tsSouth).innerHTML=data[i].timestamp+"\t";
            document.getElementById(cmdSouth).innerHTML=data[i].command;
          }
          else {
            document.getElementById(msgTime).innerHTML=data[i].time+"\t";
            document.getElementById(msg).innerHTML=data[i].command;
          }
        }
    });
}, 2000);
