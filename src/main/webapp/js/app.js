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

$.get("/qtdClientes", function(responseText) {

	$("#qtd_cliente").text(responseText);

});

$.get("/qtdProcessos", function(responseText) {

	$("#qtd_processo").text(responseText);

});

$.get("/qtdUsuarios", function(responseText) {

	$("#qtd_usuario").text(responseText);

});

$("#nomeCliente").easyAutocomplete(options);
