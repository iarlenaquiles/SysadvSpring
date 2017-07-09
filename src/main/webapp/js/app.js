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

function mostra_estado(estado) {
	
	for (var i in estado) {
		var e = estado[i]
		$("#estadoExpedicaoRg").append("<option value='" + e.id + "'>" + e.nome + "</option>");
	}
}

$.get("/getEstado", function(response) {
	mostra_estado(response);
});

$("#nomeCliente").easyAutocomplete(options);
