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
                        font-family: Arial, sans-serif;     /* Aplica la fuente Arial o sans-serif si Arial no está disponible */
                        background: #f4f4f9;                /* Define un fondo de color gris claro */
                        color: #333;                        /* Establece el color del texto en gris oscuro */
                        margin: 0;                          /* Elimina el margen predeterminado alrededor de la página */
                        padding: 0;                         /* Elimina el relleno predeterminado */
                        display: flex;                      /* Habilita el modelo de diseño flexbox */
                        flex-direction: column;             /* Organiza los elementos del body en una columna */
                        align-items: center;                /* Centra horizontalmente los elementos en el body */
                        min-height: 100vh;                  /* Establece una altura mínima del 100% del viewport, asegurando que el body ocupe toda la pantalla */
                    }
                

                    header, footer {
                        background: #333;   /* Color de fondo gris oscuro */
                        color: #fff;        /* Color del texto en blanco para contraste */
                        text-align: center; /* Centra el texto horizontalmente */
                        padding: 15px 0;    /* Agrega un espacio de 15px arriba y abajo */
                        width: 100%;        /* Hace que el header y footer ocupen todo el ancho de la página */
                    }

                       .banner img {
                        width: 100%;               /* La imagen del banner ocupa todo el ancho */
                        height: auto;              /* Ajusta la altura automáticamente */
                        display: block;            /* Quita el espacio inferior de las imágenes */
                    }
                

                    .footer {
                        max-width: 800px;   /* Define un ancho máximo de 800px para el contenido central */
                        width: 100%;        /* Permite que el contenido ocupe todo el ancho disponible dentro del contenedor */
                        padding: 20px;      /* Agrega un relleno de 20px alrededor del contenido */
                    }
                


                    h1 {
                        margin: 0;          /* Elimina el margen superior e inferior del título */
                        font-size: 1.8em;   /* Define un tamaño de fuente de 1.8 veces el tamaño base, haciendo el título más grande */
                    }
                


                    .juego {
                        background: #fff;                           /* Fondo blanco para cada tarjeta */
                        border: 1px solid #ddd;                     /* Borde gris claro alrededor de la tarjeta */
                        border-radius: 8px;                         /* Bordes redondeados en cada tarjeta */
                        padding: 20px;                              /* Espacio interno de 20px dentro de la tarjeta */
                        margin-bottom: 15px;                        /* Espacio inferior entre cada tarjeta */
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);   /* Sombra suave debajo de la tarjeta para darle profundidad */
                    }
                


                    .title {
                        font-weight: bold;          /* Define el título en negrita */
                        margin-bottom: 10px;        /* Espacio inferior de 10px para separar el título del contenido siguiente */
                    }
                


                    .genre, .platform, .description {
                        margin: 5px 0;      /* Agrega 5px de espacio arriba y abajo para separar las líneas */
                    }
                


                    .description {
                        color: #555;        /* Color gris medio para la descripción, diferenciándola visualmente del texto principal */
                    }
                </style>
                              
            </head>

            <body>
                <!-- Contenido principal de la página web generado -->

                <!-- Encabezado -->
                <header>
                    <div class="contenido">
                        <h1>Lista de Juegos</h1> <!-- Título principal de la página -->
                    </div>
                </header>

                 <!-- Banner -->
                <div class="banner">
                    <!-- Cambia "banner.jpg" por la ruta de tu imagen de banner -->
                    <img src="../IMAGENES/banner.avif" alt="Banner de juegos" />
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
