<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <head>
            <title>Student List</title>
            <style>
                table { border-collapse: collapse; width: 70%; margin-top: 20px; }
                th, td { border: 1px solid #888; padding: 8px; text-align: left; }
                th { background-color: #efefef; }
            </style>
        </head>
        <body>
            <h2>Student Information</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Department</th>
                </tr>
                <xsl:for-each select="students/student">
                    <tr>
                        <td><xsl:value-of select="id"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="age"/></td>
                        <td><xsl:value-of select="department"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
