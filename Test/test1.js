const timer = ms => new Promise(res => setTimeout(res, ms))
function typee(input, thetext, timeStep) {
	if(input[0] !== '*'){
		var i = 0;
		function typing() {
		  if (i < thetext.length) {
			document.getElementById(input).value += thetext.charAt(i);
			i++;
			setTimeout(typing, timeStep);
		  }
		}
		typing();
	}else{
		//if key is a select input, it has an indication *id_state, so * is evicted
		document.getElementById(input.substring(1)).value = thetext
	}
}


async function fillInputs(object){
		const timeStep = 100
		//clearig the inputs
		console.log("CLEARING THE INPUTS")
		for (const [key, value] of Object.entries(object)) {
			if(key[0] !== '*'){
				document.getElementById(key).value = ''
			}else{
				document.getElementById(key.substring(1)).value = ''
			}
		}
		await timer(1000);
		//Begin filling
		for (const [key, value] of Object.entries(object)) {
			typee(key,value, timeStep)
			await timer((value.length + 4)*timeStep)
		}
}


const data1 = {'id_car_title': 'Volkswagen Tiguan 2018', '*id_state': 'IA', 'id_city': 'Davenport', 'id_color': 'Red', 'id_model':'Tiguan SUV', '*id_year':'2018', 'id_condition':'Used', 'id_price':'20000'};

const data2 = {'id_body_style':'SUV', 'id_engine':'2.0L I4 16V GDI DOHC Turbo', 'id_transmission':'8-Speed Automatic', 'id_interior':'Leather', 'id_miles':'50000', 'id_doors': '5', 'id_passengers':'5', 'id_vin_no':'04546532', 'id_milage':'50000', 'id_fuel_type':'Gasoline', 'id_no_of_owners':'1'}



fillInputs(data1)
fillInputs(data2)
