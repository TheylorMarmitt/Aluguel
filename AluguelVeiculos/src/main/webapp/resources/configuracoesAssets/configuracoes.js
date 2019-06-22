	$("#filial").change(function(){
		let codFilial = $("#filial").val();
		
		$.ajax({
		      url: 'configuracoes',
		      data: { codFilial: codFilial},
			  dataType: 'json'
		      
		    }).done(function (configuracoes) {
		    	$("#valorKm").val(configuracoes.percentValorKm);
		    	$("#taxaDiaria").val(configuracoes.percentTaxaDiaria);
		    })
	})