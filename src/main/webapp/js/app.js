var options = {
	url : "/getClientes?nome=" + $("#nomeCliente").val(),

	getValue : "nome",

	list : {
		onSelectItemEvent : function() {
			var value = $("#nomeCliente").getSelectedItemData().id;
			$("#idCliente").val(value).trigger("change");
		}
	}
};

$("#nomeCliente").easyAutocomplete(options);