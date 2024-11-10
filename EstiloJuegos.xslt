<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        
        <html>
            <head>
                
                <title>Lista de Juegos</title> 
                
                <style>
                    
                    body {
                        font-family: Arial, sans-serif;
                        background: #f4f4f9;
                        margin: 0;
                        padding: 0;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        min-height: 100vh;
                        justify-content: space-between;
                    }

                    .main-content {
                        flex-grow: 1;
                        width: 100%;
                        padding: 20px;
                    }

                    header {
                        background-color: #333;
                        color: #fff;
                        width: 100%;
                        display: flex;
                        align-items: center;
                        justify-content: space-between;
                        padding: 20px;
                        box-sizing: border-box;
                    }

                    .titulo {
                        text-align: center;
                    }

                    header h1 {
                        margin: 0;
                        font-size: 36px;
                    }
                    header .btn-anadir {
                        color: #fff;
                        text-decoration: none;
                        padding: 8px 12px;
                        background-color: #555;
                        border-radius: 4px;
                        transition: background-color 0.3s;
                    }

                    header .btn-anadir:hover {
                        background-color: #777;
                    }

                    .banner {
                        width: 100%;
                        margin: 0;
                        padding: 0;
                    }

                    .banner img {
                        width: 100%;
                        height: 80%;
                        display: block;
                    }
                
                    .content {
                        max-width: 800px;
                        width: 100%;
                        padding: 20px;
                    }

                    .Juego {
                        background: #333;
                        color: white;
                        border: 1px solid #ddd;
                        border-radius: 8px;
                        padding: 20px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        display: flex;
                        flex-direction: column;
                        justify-content: space-between;
                        transition: transform 0.2s;
                    }

                    .Juego:hover {
                        transform: scale(1.05);
                    }

                    .title {
                        font-weight: bold;
                        margin-bottom: 10px;
                    }
                
                    .genre, .platform, .description {
                        margin: 5px 0;
                    }
                
                    .description {
                        color: grey;
                    }

                    footer {
                        width: 100%;
                        background: #333;
                        color: #fff;
                        text-align: center;
                        padding: 10px 0;
                    }
                </style>
                              
            </head>

            <body>

                <header>
                    <div class="titulo">
                        <h1>Lista de Juegos</h1> <!-- Título principal de la página -->
                    </div>
                </header>

                <div class="banner">
                    <img src="banner.avif" alt="Banner de juegos" />
                </div>

                <div class="content">
                    <xsl:for-each select="juegos/juego">
                        
                        <div class="Juego">

                            <div class="title"><xsl:value-of select="titulo" /></div>
                            <div class="genre"><strong>Género:</strong> <xsl:value-of select="genero" /></div>
                            <div class="platform"><strong>Plataforma:</strong> <xsl:value-of select="plataforma" /></div>
                            <div class="description"><strong>Descripción:</strong> <xsl:value-of select="descripcion" /></div>
                        </div>
                    </xsl:for-each>
                </div>

                <footer>
                    <div class="footer">
                        <p>© 2024 Lista de Juegos. Todos los derechos reservados.</p>
                    </div>
                </footer>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
