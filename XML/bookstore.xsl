<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="*">
        <html>
            <body>
                <h1>Bookstore Info</h1>
                 <ul>
                    <xsl:for-each select="/bookstore/book">
                        <li>
                            <b>ID:</b>
                            <xsl:value-of select="@id"/>

                        </li>
                        <p>
                            <b>Title:</b>
                            <xsl:value-of select="title"/>
                            <br></br>
                            <b>Author:</b>
                            <xsl:for-each select="./author">
                                <xsl:value-of select="."/>,
                            </xsl:for-each>
                            <br></br>

                            <b>Price:</b>
                            <xsl:value-of select="price"/>
                            <br></br>
                        </p>

                    </xsl:for-each>
                </ul>   
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
