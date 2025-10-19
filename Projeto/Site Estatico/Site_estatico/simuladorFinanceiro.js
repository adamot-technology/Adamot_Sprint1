    function calcularOperação() {
        var valorAluguel = Number(iptAluguel.value);
        var setor = iptSetor.value;
        var porcentagem = Number(iptPorcent.value / 100)
        
        

        if (iptAluguel.value == '' || iptAluguel.value < 0) {
            alert('Informe o valor do aluguel. OBS: valor deve ser maior do que zero.')
        }
        if (setor == '') {
            alert('Informe o setor de referência')
        }
        if (porcentagem == '') {
            alert('Valor da porcentagem deve ser maior do que zero')
        }
        else {

        iptAluguel.value = "";     
        iptSetor.value = "";   
        iptPorcent.value = "";

        var valorExtra = valorAluguel * porcentagem

           mensagem.innerHTML = `
    <h3>📊 Resultado da Simulação !!!</h3><br>
    <p>O <strong>Projeto de Monitoramento do Fluxo de Pessoas</strong> fornece dados estratégicos que permitem identificar setores com maior potencial de valorização.</p>
    <p>No setor <strong>${setor}</strong>, ao aplicar o percentual definido (<strong>${(porcentagem*100).toFixed(0)}%</strong>), o sistema aponta um ganho adicional de <strong>R$ ${valorExtra.toFixed(2)}</strong> por m  <sup>2</sup>.</p>
    <p>✅ Essa visão só é possível graças ao monitoramento inteligente do fluxo de clientes, que permite reajustes embasados em dados reais.</p>
    <p><em>Assim, cada decisão deixa de ser um risco e passa a ser uma oportunidade concreta de aumentar a rentabilidade do shopping.</em></p>`;

        }
    }