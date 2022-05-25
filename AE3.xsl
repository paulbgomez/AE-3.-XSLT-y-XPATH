<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <link rel="stylesheet" href="AE3.css"/>
                <meta charset="UTF-8"/>
                <title>AE-3. XSLT y XPATH</title>
            </head>
            <body>
                <h1>Ciclos Formativos de Grado Superior</h1>
                <div class="list_ciclos">
                    <ul>
                        <xsl:for-each select="//ciclo">
                            <li>
                                <xsl:value-of select="nombre"/>
                                (<xsl:value-of select="@id"/>)
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
                <div class="table_ciclos">
                    <table>
                        <tr>
                            <th class="titulo" colspan="2">Informacion de los titulos</th>
                        </tr>
                        <tr>
                            <th>Titulo</th>
                            <th>Año del decreto</th>
                        </tr>
                        <xsl:for-each select="//ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="@id"/>
                                </td>
                                <td>
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <div class="table_profes">                
                    <table>
                        <tr>
                            <th colspan="1">Profesorado</th>
                        </tr>
                        <xsl:for-each select="//profesor">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <ul>
                    <h3> Equipo directivo </h3>
                    <xsl:for-each select="//director | //jefe_estudios">
                        <li>
                            <xsl:value-of select="nombre"/>, 
                            <xsl:value-of select="despacho"/>
                        </li>
                    </xsl:for-each>
                </ul>

                <div>
                    <h4>Contacto</h4>
                    <a href="#">Llamar</a>

                    <div>
                        <h4>Formulario de contacto</h4>
                        <form action="submit-formulario">
                            <p>
                                <label for="email">Email
                                    <span>*</span>
                                </label>
                                <input type="email" name="email" id="email" required="obligatorio" placeholder="Escribe tu Email" />
                            </p>
                            <p>
                                <label for="asunto">Asunto
                                    <span>*</span>
                                </label>
                                <input type="text" name="asunto" id="asunto" required="obligatorio" placeholder="Escribe tu asunto" />
                            </p>
                        </form>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>