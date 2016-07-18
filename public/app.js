
function something()
{
	var x = window.localStorage.getItem('aaa');

	x = x*1 + 1; //x*1 - string to int

	window.localStorage.setItem('aaa', x);

	alert(x)
}
