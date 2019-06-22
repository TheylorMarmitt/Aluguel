	$("#carro").change(function(){
		
		let codCarro = $("#carro").val();

		$.ajax({
		      url: 'atualizaValores',
		      data: { codCarro: codCarro},
			  dataType: 'json'
		      
		    }).done(function (configuracoes) {
		    	$("#taxa").val(configuracoes.taxaPorKm);
		    	$("#valor").val(configuracoes.valorDiario);
		    })
	})