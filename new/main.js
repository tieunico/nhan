function clickAction(id){
  var val=document.getElementById(id).value;
  var conf=confirm("Are you sure you want to toggle "+val+" breaker?");
  var bgColor=document.getElementById(id).style.backgroundColor;
  //var bay1_param={voltage:"123.45", current:"100", power:12345.0};

  if (conf){          //this condition is kinda broken - first click on red doesn't change
    if(bgColor=="red"){
      document.getElementById(id).style.background="green";
    }
    else {                //BROKEN!!  else if (bgColor=="green")
      document.getElementById(id).style.background="red";
    }
  }
}
/* //unsuccessful attempt to toggle color via jquery
var conf=confirm("Are you sure you want to toggle "+id+" breaker?");
var bgColor=document.getElementById(id).style.backgroundColor;
var btnVal=false;
$(document).ready(function(){
  $('.btn').on('click',function(){
    if (conf){
      $(this).toggleClass("green");
    }
  });
});
*/
function toggleNfo(){
  var txtBoxes=document.getElementsByClassName('txtBox'), i;
  for (var i=0; i<txtBoxes.length; i++) {
    if (txtBoxes[i].style.display=='none'){
      txtBoxes[i].style.display='block';
    }
    else {
      txtBoxes[i].style.display = 'none';
    }
  }
}

//$.get("getData.php", function(data){  //old code here calls getData.php
setInterval(function(){
    $.getJSON("mydata.php",function(data){//
      for (var i=0;i<data.length;i++){
        var statusID="button#bay"+(i+1);
        var voltID="bay"+(i+1)+"_v";
        var currID="bay"+(i+1)+"_c";
        var realPoID="bay"+(i+1)+"_realPo";
        var reactPoID="bay"+(i+1)+"_reactPo";
        console.log(data);
      //  console.log(txtboxID);
    //    console.log(i); //debugola
        document.getElementById(voltID).innerHTML=data[i].voltage+' V';
        document.getElementById(currID).innerHTML=data[i].current+' A';
        document.getElementById(realPoID).innerHTML=data[i].po+' W';
        document.getElementById(reactPoID).innerHTML=data[i].reactive_po+' var';
        if(data[i].status == 1){
            $(statusID).css('background-color','red');
            $(statusID).val('open');
         }
        else if(data[i].status == 0){
            $(statusID).css('background-color','green');
            $(statusID).val('close');
        }
        else{
            $(statusID).css('background-color','yellow');
            $(statusID).val('-1');
        }
      }
    });
}, 2000)
/*$.getJSON("mydata.php",function(data){//
  for (var i=0;i<data.length;i++){
    var statusID="button#bay"+(i+1);
    var voltID="bay"+(i+1)+"_v";
    var currID="bay"+(i+1)+"_c";
    var realPoID="bay"+(i+1)+"_realPo";
    var reactPoID="bay"+(i+1)+"_reactPo";
    console.log(data);
  //  console.log(txtboxID);
//    console.log(i); //debugola
    document.getElementById(voltID).innerHTML=data[i].voltage+' V';
    document.getElementById(currID).innerHTML=data[i].current+' A';
    document.getElementById(realPoID).innerHTML=data[i].power+' W';
    document.getElementById(reactPoID).innerHTML=data[i].reactPo+' var';
    if(data[i].status == 1){ $(statusID).css('background-color','red'); }
    else if(data[i].status == 0){ $(statusID).css('background-color','green'); }
    else{ $(statusID).css('background-color','yellow'); }
  }
});*/
//post data using $.ajax
$(document).ready(function(){
    $('button').click(function(){
        var name=document.getElementById('bay1').name;
        $.ajax({
            type: "GET",
            url: "connect_simulator.php",
            data: {bay:this.name, status:this.value},
            async: true
        });
    });
});
