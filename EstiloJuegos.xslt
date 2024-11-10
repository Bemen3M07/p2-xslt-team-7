<?xml version="1.0" encoding="UTF-8"?>
<!-- Declaración XML: Indica el formato de documento XML y establece la codificación de caracteres en UTF-8. -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Inicia la hoja de estilo XSLT. Usa la versión 1.0 de XSLT y define el espacio de nombres XSL. -->

    <xsl:output method="html" encoding="UTF-8" />
    <!-- Define que el resultado será un documento HTML con codificación UTF-8. -->

    <xsl:template match="/">
        <!-- Define una plantilla que se aplicará al nodo raíz del documento XML. Esta es la entrada principal para la transformación. -->
        
        <html>
            <head>
                
                <title>Lista de Juegos</title> <!-- Define el título de la página web resultante. -->
                
                <style>
                    
                    body {
                        font-family: Arial, sans-serif;      /* Aplica la fuente Arial o sans-serif si Arial no está disponible */
                        background: #f4f4f9;                 /* Fondo gris claro */
                        margin: 0;                           /* Elimina el margen predeterminado alrededor de la página */
                        padding: 0;                          /* Elimina el relleno predeterminado */
                        display: flex;                       /* Flexbox habilitado */
                        flex-direction: column;              /* Organiza los elementos en una columna */
                        align-items: center;                 /* Centra horizontalmente los elementos */
                        min-height: 100vh;                   /* Asegura que el body ocupe toda la altura del viewport */
                        justify-content: space-between;      /* Distribuye los elementos de manera equitativa, dejando espacio entre ellos */
                    }

                    .main-content {
                        flex-grow: 1;                        /* Permite que el contenido principal crezca para ocupar el espacio disponible */
                        width: 100%;                         /* Asegura que el contenido principal ocupe todo el ancho disponible */
                        padding: 20px;                       /* Agrega algo de espacio interno */
                    }

                    header {
                        background-color: #333;    /* Fondo oscuro */
                        color: #fff;               /* Texto blanco */
                        width: 100%;               /* Ancho total */
                        display: flex;             /* Flexbox para centrar el contenido */
                        align-items: center;       /* Centrado vertical */
                        justify-content: space-between;   /* Espacio entre el título y el enlace */
                        padding: 20px;             /* Espacio alrededor del contenido */
                        box-sizing: border-box;    /* Asegura que el relleno se incluya en el cálculo del ancho */
                    }

                    .titulo {
                        text-align: center;        /* Centra el contenido dentro de .titulo */
                    }

                    header h1 {
                        margin: 0;                 /* Elimina márgenes por defecto alrededor del h1 */
                        font-size: 36px;           /* Tamaño de fuente más grande */
                    }
                    header .btn-anadir {
                        color: #fff;               /* Color del texto */
                        text-decoration: none;     /* Elimina el subrayado */
                        padding: 8px 12px;         /* Relleno para darle apariencia de botón */
                        background-color: #555;    /* Fondo del botón */
                        border-radius: 4px;        /* Bordes redondeados */
                        transition: background-color 0.3s;
                    }

                    header .btn-anadir:hover {
                        background-color: #777;    /* Color al pasar el ratón por encima */
                    }

                    .banner {
                        width: 100%;               /* El banner ocupa todo el ancho */
                        margin: 0;                  /* Elimina margen */
                        padding: 0;                 /* Elimina relleno */
                    }

                    .banner img {
                        width: 100%;               /* La imagen del banner ocupa todo el ancho */
                        height: 80%;               /* Ajusta la altura automáticamente */
                        display: block;            /* Quita el espacio inferior de las imágenes */
                    }
                
                    .content {
                        max-width: 800px;   /* Define un ancho máximo de 800px para el contenido central */
                        width: 100%;        /* Permite que el contenido ocupe todo el ancho disponible dentro del contenedor */
                        padding: 20px;      /* Agrega un relleno de 20px alrededor del contenido */
                    }

                    .Juego {
                        background: #333;
                        Color: white;
                        border: 1px solid #ddd;
                        border-radius: 8px;
                        padding: 20px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        display: flex;
                        flex-direction: column;
                        justify-content: space-between;
                        transition: transform 0.2s;
                    }

                    /* Agregar efecto al pasar el mouse */
                    .Juego:hover {
                        transform: scale(1.05); /* Efecto de agrandamiento */
                    }

                    .title {
                        font-weight: bold;          /* Define el título en negrita */
                        margin-bottom: 10px;        /* Espacio inferior de 10px para separar el título del contenido siguiente */
                    }
                
                    .genre, .platform, .description {
                        margin: 5px 0;      /* Agrega 5px de espacio arriba y abajo para separar las líneas */
                    }
                
                    .description {
                        color: grey;        /* Color gris medio para la descripción, diferenciándola visualmente del texto principal */
                    }

                    footer {
                        width: 100%;                         /* El footer ocupa todo el ancho */
                        background: #333;                    /* Fondo oscuro */
                        color: #fff;                         /* Texto blanco */
                        text-align: center;                  /* Centra el texto */
                        padding: 10px 0;                     /* Espacio de relleno en el footer */
                    }
                </style>
                              
            </head>

            <body>
                <!-- Contenido principal de la página web generado -->

                <!-- Encabezado -->
                <header>
                    <div class="titulo">
                        <h1>Lista de Juegos</h1> <!-- Título principal de la página -->
                    </div>
                </header>

                 <!-- Banner -->
                <div class="banner">
                    <!-- Cambia "banner.jpg" por la ruta de tu imagen de banner -->
                    <img src="banner.avif" alt="Banner de juegos" />
                </div>


                <!-- Contenedor de tarjetas de juegos -->
                <div class="content">
                    <xsl:for-each select="juegos/juego">
                        <!-- Itera sobre cada elemento <juego> dentro del elemento <juegos> en el XML, generando una tarjeta para cada juego -->
                        
                        <div class="Juego">
                            <!-- Tarjeta individual para cada juego -->

                            <div class="title"><xsl:value-of select="titulo" /></div> <!-- Muestra el título del juego -->
                            <div class="genre"><strong>Género:</strong> <xsl:value-of select="genero" /></div> <!-- Muestra el género del juego -->
                            <div class="platform"><strong>Plataforma:</strong> <xsl:value-of select="plataforma" /></div> <!-- Muestra la plataforma -->
                            <div class="description"><strong>Descripción:</strong> <xsl:value-of select="descripcion" /></div> <!-- Muestra la descripción -->
                        </div>
                    </xsl:for-each>
                </div>


            <!-- Pie de página -->
                <footer>
                    <div class="footer">
                        <p>© 2024 Lista de Juegos. Todos los derechos reservados.</p> <!-- Texto del pie de página -->
                    </div>
                </footer>
            </body>
        </html>



    </xsl:template>
</xsl:stylesheet>
