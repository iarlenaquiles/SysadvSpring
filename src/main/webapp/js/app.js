var options = {
	url : "/getClientes",

	getValue : "nome",

	list : {
		onSelectItemEvent : function() {
			var value = $("#nomeCliente").getSelectedItemData().id;
			$("#idCliente").val(value).trigger("change");
		}
	}
};

$("#nomeCliente").easyAutocomplete(options);

$(document).ready(function () {
    
});