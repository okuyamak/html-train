
/**********************************/
/* greetings based on time*/
/**********************************/
/* get current time by default */
var today = new Date();
/* get current hour of time 0-23 */ 
var hourNow = today.getHours();
/* variable in the follwing function */ 
var greeting;

if (hourNow > 15) {
	greeting= 'Good evening!';
}
	
else if (hourNow > 12) {
		greeting = 'Good afternoon!';
}
		
else if (hourNow > 0) {
	greeting = 'Good morning!';
}
			
else {
	greeting = 'Welcome!';
}
	
/* document.write and grab element directly from html file */
document.write( '<h3>' + greeting + '</h3>');
var time = today.toTimeString();
document.write( '<h3>' + time + '</h3>');

/**********************************/
/* test parameter for view botton */
/* change it to move to bio */
/**********************************/
var para = document.getElementById('view');

para.addEventListener('click', updateName);

function updateName() {
  var name = prompt('type name');
  para.textContent = 'Player 1: ' + name;
}


/**********************************/
/* interactive skill bar */
/**********************************/
var i = 0;
function move(skillID) {
  if (i == 0) {
    i = 1;
    var elem = document.ElementById(skillID);
    var width = 1;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
      }
    }
  }
}

move("#jqBar, #jqBar2");




/**********************************/
/* footer */
/**********************************/
/* using document object model DOM */
var msg = '<p><b>page title: </b>' + document.title + '<br/> ';
msg += '<b>page address: </b>' + document.URL + '<br/>';
msg += '<b>last modified: </b>' + document.lastModified + '</p>';
msg += '<b>copyright: </b>' + today.getFullYear() + '</p>';

var el = document.getElementById("footer");
el.innerHTML = msg;
