<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Juegos</title>
                <style>
                    /* Estilos CSS */
                    body {
                        font-family: Arial, sans-serif;
                        background: #f4f4f9;
                        color: #333;
                        margin: 0;
                        padding: 0;
                        min-height: 100vh;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                    }
                    header, footer {
                        background: #333;
                        color: #fff;
                        text-align: center;
                        padding: 15px 0;
                        width: 100%;
                    }
                    .content {
                        max-width: 1200px;
                        width: 100%;
                        padding: 0 20px;
                        flex: 1;
                    }
                    h1 {
                        margin: 0;
                        font-size: 1.8em;
                    }
                    .container {
                        display: flex;
                        flex-wrap: wrap;
                        gap: 20px;
                        justify-content: center;
                        padding: 20px;
                    }
                    .card {
                        background: #fff;
                        border: 1px solid #ddd;
                        border-radius: 8px;
                        padding: 15px;
                        width: 250px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    }
                    .title {
                        font-weight: bold;
                        margin-bottom: 8px;
                    }
                    .platform {
                        font-style: italic;
                        color: #777;
                    }
                </style>
            </head>
            <body>
                <!-- Encabezado -->
                <header>
                    <div class="content">
                        <h1>Lista de Juegos</h1>
                    </div>
                </header>

                <!-- Contenedor de tarjetas -->
                <div class="content">
                    <div class="container">
                        <xsl:for-each select="juegos/juego">
                            <div class="card">
                                <div class="title"><xsl:value-of select="titulo" /></div>
                                <div><strong>Género:</strong> <xsl:value-of select="genero" /></div>
                                <div class="platform"><strong>Plataforma:</strong> <xsl:value-of select="plataforma" /></div>
                                <div><strong>Descripción:</strong> <xsl:value-of select="descripcion" /></div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>

                <!-- Pie de página -->
                <footer>
                    <div class="content">
                        <p>© 2024 Lista de Juegos. Todos los derechos reservados.</p>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
