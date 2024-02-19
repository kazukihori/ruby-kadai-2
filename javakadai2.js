
var results = document.querySelector(".result");

var nums = document.querySelectorAll(".num_btn");
var one_nines = document.querySelectorAll(".one_nine_btn");
var cals = document.querySelectorAll(".cal_btn");
var zero = document.querySelector(".zero_btn");
var point =document.querySelector(".point_btn");

var clear = document.getElementById("#clear_btn");
var equal = document.getElementById("#equal_btn");

var total = "0";
var text = "";
var calOutput = "";
var pointOutput ="";
var zeroOutput = "";

function numPush(event){
  text = event.target.textContent;

  if(text =="="){
    total = eval(total);
  }else if(text == "AC"){
    total = "0"
  }else{
    if(total == "0"){
      total = text;
    }else {
     total += text;
     }
    }
  
  results.textContent = total;
  console.log(total);

}

function calPush(event){

calOutput = event.target.textContent;

  
 if (total.slice(-1) ==="+"){
 return;
 }else if (total.slice(-1) ==="-"){
  return;
 }else if(total.slice(-1) ==="*"){
  return;
 }else if (total.slice(-1) ==="/"){
  return;
 }else{
  total += calOutput;
 }
 results.textContent += calOutput;
console.log(calOutput);

}

function pointPush(event){
  pointOutput = event.target.textContent;

  if(total.slice(-1) === "."){
    return;
  }else{
    total += pointOutput;
  }

  results.textContent += pointOutput;

}

function zeroPush(event){
  zeroOutput = event.target.textContent;

  if (total =="0"){
    return;
  }else{
    total += zeroOutput;
  }

  results.textContent += zeroOutput;
};


nums.forEach(num => num.addEventListener("click", numPush));
cals.forEach(cal => cal.addEventListener("click",calPush));
point.addEventListener("click",pointPush);
zero.addEventListener("click",zeroPush);



 
