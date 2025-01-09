<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contador dos Mozis💖</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            background-color: #13322B; /* Cor de fundo verde escuro */
            color: #fff; /* Cor do texto em branco para contraste */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            overflow: hidden;
            font-size: 18px;
        }
        h1 {
            font-size: 2rem;
            margin-top: 20px;
            font-weight: bold;
            margin-bottom: 30px;
        }
        .contador {
            font-size: 2rem;
            margin-bottom: 20px;
            color: rgba(255, 255, 255, 0.9);
        }
        .tempo {
            font-size: 1.5rem;
            margin: 5px 0;
        }
        .inicio {
            font-size: 1.2rem;
            margin-top: 10px;
            font-weight: bold;
        }
        /* Ajustando a responsividade */
        @media screen and (max-width: 600px) {
            h1 {
                font-size: 1.5rem;
            }
            .contador {
                font-size: 1.5rem;
            }
            .tempo {
                font-size: 1.2rem;
            }
        }
    </style>
</head>
<body>
    <h1>Contador dos Mozis💖</h1>
    <div class="inicio">Desde 09/09/24</div>

    <div class="contador">
        <div id="tempo" class="tempo"></div>
        <div id="anos" class="tempo"></div>
        <div id="meses" class="tempo"></div>
    </div>

    <script>
        // Data inicial
        const dataInicio = new Date("2024-09-09T13:35:20");

        function adicionarZero(valor) {
            return valor < 10 ? "0" + valor : valor;
        }

        function atualizarContador() {
            const agora = new Date();
            const tempoDecorrido = agora - dataInicio;

            const segundos = Math.floor(tempoDecorrido / 1000);
            const minutos = Math.floor(segundos / 60);
            const horas = Math.floor(minutos / 60);
            const dias = Math.floor(tempoDecorrido / (1000 * 60 * 60 * 24));
            const meses = Math.floor(dias / 30);
            const anos = (dias / 365).toFixed(2); // Ano com fração

            // Calculando a diferença em dias, horas, minutos e segundos com formatação
            const diasFormatados = adicionarZero(dias);
            const horasFormatadas = adicionarZero(horas % 24);
            const minutosFormatados = adicionarZero(minutos % 60);
            const segundosFormatados = adicionarZero(segundos % 60);

            document.getElementById("tempo").textContent = `${diasFormatados}:${horasFormatadas}:${minutosFormatados}:${segundosFormatados}`;
            document.getElementById("anos").textContent = `Anos: ${anos}`;
            document.getElementById("meses").textContent = `Meses: ${meses}`;
        }

        setInterval(atualizarContador, 1000); // Atualiza a cada segundo
    </script>
</body>
</html>
