
        $.get('http://fipeapi.appspot.com/api/1/carros/marcas.json', function (json) {
            const $marca = $('#marca');
            json.forEach((marca) => {
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
                	$("#modelo").append("<option value="+modelo.id+">"+modelo.fipe_name+"</option>");
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
                	$("#ano").append("<option value="+ano.id+">"+ano.name+"</option>");
                })
            })
        }) 
        
        
         
        
        