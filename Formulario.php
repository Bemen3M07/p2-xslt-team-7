<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $titulo = htmlspecialchars($_POST['titulo']);
    $genero = htmlspecialchars($_POST['genero']);
    $plataforma = htmlspecialchars($_POST['plataforma']);
    $descripcion = htmlspecialchars($_POST['descripcion']);

    // Cargar el archivo XML existente
    $xmlFile = '../XML/Juegos.xml';
    if (file_exists($xmlFile)) {
        $xml = simplexml_load_file($xmlFile);
    } else {
        echo "El archivo XML no existe.";
        exit;
    }

    // Crear un nuevo nodo <juego> y agregar los datos
    $juego = $xml->addChild('juego');
    $juego->addChild('titulo', $titulo);
    $juego->addChild('genero', $genero);
    $juego->addChild('plataforma', $plataforma);
    $juego->addChild('descripcion', $descripcion);

    // Guardar el archivo XML actualizado
    $xml->asXML($xmlFile);

    // Redirigir con un mensaje de éxito
    echo "<script>alert('Juego agregado correctamente.'); window.location.href = '#';</script>";
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Juego</title>
    <style>
        /* General reset and typography */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        /* Form container */
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        /* Form title */
        h2 {
            color: #333;
            margin-bottom: 15px;
            font-size: 24px;
        }

        /* Form fields and labels */
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
            text-align: left;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            font-size: 16px;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        /* Submit button */
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        /* Responsive styling */
        @media (max-width: 500px) {
            .form-container {
                padding: 15px;
                max-width: 100%;
            }

            input[type="text"], textarea {
                font-size: 14px;
            }

            input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Agregar Juego</h2>
        <form action="" method="POST">
            <label for="titulo">Título del Juego:</label>
            <input type="text" id="titulo" name="titulo" required>

            <label for="genero">Género:</label>
            <input type="text" id="genero" name="genero" required>

            <label for="plataforma">Plataforma:</label>
            <input type="text" id="plataforma" name="plataforma" required>

            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" required></textarea>

            <input type="submit" value="Agregar Juego">
        </form>
    </div>

</body>
</html>
