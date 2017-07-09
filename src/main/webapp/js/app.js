var options = {
	url : "/getClientes",

	getValue : "nome",

	list : {
		match : {
			enabled : true
		},

		onSelectItemEvent : function() {
			var value = $("#nomeCliente").getSelectedItemData().id;
			$("#idCliente").val(value).trigger("change");
		}
	}
};

var options2 = {
	url : "/getEstado",

	getValue : "nome",

	list : {
		match : {
			enabled : true
		},

		onSelectItemEvent : function() {
			var value = $("#estadoExpedicaoRg").getSelectedItemData().id;
			$("#idEstadoExpedicaoRg").val(value).trigger("change");
		}
	}
};

$.get("/qtdClientes", function(responseText) {

	$("#qtd_cliente").text(responseText);

});

$.get("/qtdContatos", function(responseText) {

	$("#qtd_contato").text(responseText);

});

$.get("/qtdProcessos", function(responseText) {

	$("#qtd_processo").text(responseText);

});

$.get("/qtdUsuarios", function(responseText) {

	$("#qtd_usuario").text(responseText);

});

function mostra_estado(estado) {

	for ( var i in estado) {
		var e = estado[i]
		$("#estadoExpedicaoRg").append(
				"<option value='" + e.id + "'>" + e.nome + "</option>");
	}
}

function mostra_cidade(cidade) {

	for ( var i in cidade) {
		var c = cidade[i]
		$("#cidade").append(
				"<option value='" + c.id + "'>" + c.nome + "</option>");
	}
}

$.get("/getEstado", function(response) {
	mostra_estado(response);
	// mostra_estado(response, "#estadoExpedicaoCtps");
	// mostra_estado(response, "#estado");
});

$.get("/getCidade", function(response) {
	mostra_cidade(response);
});
$("#estadoExpedicaoRg").easyAutocomplete(options2);
$("#nomeCliente").easyAutocomplete(options);
