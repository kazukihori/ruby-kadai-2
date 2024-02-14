var start_button = document.getElementById("start_button");
var stop_button = document.getElementById("stop_button");
var reset_button = document.getElementById("reset_button");
var timer = document.getElementById("timer");



var pre_time;
var new_time;
var diff_time = 0;
var intervalId = null;

function updateNumber(display_time){
    let ms = display_time % 1000;
    let s = Math.floor(display_time / 1000) % 60;
    let m = Math.floor(display_time / (1000 * 60)) % 60 ;
    let h = Math.floor(display_time / (1000 * 60 * 60)) % 60;

    let viewMs = ms.toString().slice(-3,1);
    let viewS = s.toString().padStart(1,"0");
    let viewM = m.toString().padStart(1,"0");
    let viewH = h.toString().padStart(1,"0");

    timer.innerHTML = `${viewH}:${viewM}:${viewS}:${viewMs}`;

    
   
}

start_button.addEventListener("click", function(){
    if(intervalId !== null)
    {return;}
    else
    {pre_time = Date.now();
    intervalId = setInterval(function(){
        new_time = Date.now();
        diff_time += new_time - pre_time;
        pre_time = new_time;

        updateNumber(diff_time);

    },100)};

    start_button.disabled = true;
    stop_button.disabled = false;
    reset_button.disabled = false;
    

  
});

stop_button.addEventListener("click", function(){
   clearInterval(intervalId);
   intervalId = null;

   start_button.disabled = false;
   stop_button.disabled = true;
   reset_button.disabled = false;


});

reset_button.addEventListener("click", function(){
    diff_time = 0;
    clearInterval(intervalId);
    intervalId = null;
    updateNumber(diff_time);

    start_button.disabled = false;
    stop_button.disabled = true;
    reset_button.disabled = true;
});
