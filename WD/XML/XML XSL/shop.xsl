<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <head>
            <title>Shop List</title>
            <style>
                table { border-collapse: collapse; width: 70%; margin-top: 20px; }
                th, td { border: 1px solid #aaa; padding: 8px; text-align: left; }
                th { background-color: #f9f9f9; }
            </style>
        </head>
        <body>
            <h2>Shop Information</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Location</th>
                </tr>
                <xsl:for-each select="shops/shop">
                    <tr>
                        <td><xsl:value-of select="id"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="type"/></td>
                        <td><xsl:value-of select="location"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
