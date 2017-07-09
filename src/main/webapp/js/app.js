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

$.get("/qtdContatos", function(responseText) {

	$("#qtd_contato").text(responseText);

});

$.get("/qtdProcessos", function(responseText) {

	$("#qtd_processo").text(responseText);

});

$.get("/qtdUsuarios", function(responseText) {

	$("#qtd_usuario").text(responseText);

});

function mostra_estado(estado, idCampo) {

	for ( var i in estado) {
		var e = estado[i]
		$(idCampo).append(
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
	mostra_estado(response, "#estadoExpedicaoRg");
	mostra_estado(response, "#estadoExpedicaoCtps");
	mostra_estado(response, "#estado");
});

$.get("/getCidade", function(response) {
	mostra_cidade(response);
});

function getCidades(idEstado) {
	if (idEstado != '') {
		$.ajax('/', {
			data : {
				id : idEstado
			},
			dataType : "json",
			success : function(data) {
				$.each(data, function(i, item) {
					$("#cidades").append(
							'<option value="' + item.id + '" >' + item.nome
									+ '</option>');
				});

			},
			error : function() {
				console.log('Erro ao buscar cidades.');
			}
		});
	}

}

$("#nomeCliente").easyAutocomplete(options);
