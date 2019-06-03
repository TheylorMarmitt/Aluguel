
	
        $.get('http://fipeapi.appspot.com/api/1/carros/marcas.json', function (json) {
            const $marca = $('#marca');
            json.forEach((marca) => {
            	console.log($("#marcaCarro").val());
            	if($("#marcaCarro").val() == marca.fipe_name){
            		$marca.append("<option value="+marca.id+" selected>"+ marca.fipe_name+ "</option>");
            	}else{}
            		$marca.append("<option value="+marca.id+">"+ marca.fipe_name+ "</option>");
            })
            $marca.change();
        })
       
        
        $('#marca').change(function () {
            const marcaSelecionada = $(this).val();
            const $modelo = $('#modelo');
            $modelo.empty();
            $.get("http://fipeapi.appspot.com/api/1/carros/veiculos/" + marcaSelecionada+ ".json", function (json) {
                json.forEach((modelo) => {
                	if($("#modeloCarro").val() == modelo.fipe_name){
                		$modelo.append("<option value="+modelo.id+" selected>"+modelo.fipe_name+"</option>");
                	}else{
                		$modelo.append("<option value="+modelo.id+">"+modelo.fipe_name+"</option>");
                	}
                })
                $modelo.change();
            })

        })
        
        $('#modelo').change(function () {
            const marcaSelecionada = $('#marca').val();
            const modeloSelecionado = $(this).val();
            const $ano = $('#ano');
            $ano.empty();
            $.get("http://fipeapi.appspot.com/api/1/carros/veiculo/" + marcaSelecionada +"/"+ modeloSelecionado +".json", function (json) {
                json.forEach((ano) => {
                	let year = ano.name.split(" ");
                	if($("#anoCarro").val() == year[0]){
                		$ano.append("<option value="+ano.id+" selected>"+ano.name+"</option>");
                	}else{
                		$ano.append("<option value="+ano.id+">"+ano.name+"</option>");
                	}
                })
                $ano.change();
            })
        }) 
        
        $('#ano').change(function () {
        	const marcaSelecionada = $('#marca').val();
        	const modeloSelecionada = $('#modelo').val();
            const anoSelecionada = $(this).val();
            
            $.get("http://fipeapi.appspot.com/api/1/carros/veiculo/" + marcaSelecionada +"/"+ modeloSelecionada +"/"+ anoSelecionada+ ".json", function (json) {
                console.log(json);
                $("#marcaCarro").val(json.marca);
                $("#modeloCarro").val(json.name);
                $("#anoCarro").val(json.ano_modelo);

            });

        })
         
        
        
        