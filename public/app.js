
function something()
{
	var x = window.localStorage.getItem('aaa');

	x = x*1 + 1; //x*1 - string to int

	window.localStorage.setItem('aaa', x);

	alert(x)
}

function update_orders_inputs()
{
	var orders = cart_get_orders();
	$('#orders_input').val(orders);
}

function update_orders_button()
{
	var text = 'Cart (' + cart_get_number_of_items() + ')';
	$('#orders_button').val(text);
}


function add_to_cart(id)
{
	var key = 'product_' + id;
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	update_orders_inputs();
	update_orders_button();
}

function cart_get_number_of_items()
{
 	total = 0;
 	for (var a in localStorage) {
 		if (a.includes("product_")){
 			total = total + localStorage.getItem(a)*1;
 		}
 	}
 	return total;
}

function cart_get_orders()
{
	var orders = '';
	for (var a in localStorage)
	{
		if (a.includes("product_"))
		{
			orders += a + '=' + localStorage.getItem(a)*1 + ',';
		}
	}
	return orders
}
