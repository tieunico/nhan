var counter=1;
var valueContainer=document.getElementById("select4");
var btn =document.getElementById("select3");
btn.addEventListener("click", function(){
    var xml= new XMLHttpRequest();
    xml.open('GET', 'http://localhost/design/test/data.json');
    xml.onload=function(){
        //console.log(xml.responseText);
        var myData = JSON.parse(xml.responseText);
        myValue(myData);
    };
    xml.send();
});

function myValue(data){
    var myString="";
    for (i=0; i<data.length; i++){
        //myString+= "<p>" + "My voltage is "+ data[i].voltage +
        //" and my current is "+data[i].current +"</p>";
        valueContainer.value=data[2].status;
    }
    //valueContainer.insertAdjacentHTML('beforeend', myString);
}
