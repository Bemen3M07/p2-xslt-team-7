<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Contacto</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #333, #777);
            color: #333;
            flex-direction: column;
            overflow-x: hidden;
        }
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
            margin-top: 100px; /* Espacio para la notificación */
        }
        h2 {
            color: #444;
            margin-bottom: 10px;
        }
        .subtitle {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
        }
        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }

        /* Estilo para el mensaje de éxito */
        .success-message {
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            border-radius: 5px;
            font-size: 16px;
            z-index: 1000;
            display: none;
        }
    </style>
</head>
<body>
    <div class="success-message" id="success-message">
        Información enviada correctamente.
    </div>

    <div class="form-container">
        <h2>Formulario de Contacto</h2>
        <p class="subtitle">Cualquier duda, contáctanos.</p>
        <form id="contact-form" onsubmit="return handleSubmit(event)">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="email">Correo Electrónico:</label>
            <input type="email" id="email" name="email" required>

            <label for="telefono">Número de Teléfono:</label>
            <input type="tel" id="telefono" name="telefono" pattern="[0-9]{10}" required placeholder="1234567890">

            <label for="mensaje">Mensaje:</label>
            <textarea id="mensaje" name="mensaje" rows="4" required></textarea>

            <input type="submit" value="Enviar">
        </form>
    </div>

    <script>
        function handleSubmit(event) {
            // Prevenir que el formulario se envíe y recargue la página
            event.preventDefault();

            // Mostrar el mensaje de éxito
            document.getElementById('success-message').style.display = 'block';

            // Limpiar todos los campos del formulario
            document.getElementById('contact-form').reset();

            // Mostrar el mensaje de éxito durante 3 segundos
            setTimeout(function() {
                document.getElementById('success-message').style.display = 'none';
            }, 3000);

            // Simular el envío exitoso
            alert('Información enviada correctamente');
        }
    </script>
</body>
</html>
