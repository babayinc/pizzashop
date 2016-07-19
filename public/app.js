
function something()
{
	var x = window.localStorage.getItem('aaa');

	x = x*1 + 1; //x*1 - string to int

	window.localStorage.setItem('aaa', x);

	alert(x)
}

function add_to_cart(id)
{
	var key = 'product_' + id;
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);
	total = 0;
	for (var a in localStorage) {
		if (a.includes("product_")){
			alert(localStorage.getItem(a));
			total = total + localStorage.getItem(a)*1;
		}
	}
	alert(total);
}
