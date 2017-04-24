<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:output method="text" />
  <xsl:template match="Prehravac-nastaveni">
    [
     <xsl:for-each select="hlavni">
        { 
        "Jazyk": "<xsl:value-of select="jazyk"/>", 
        "Vzhled": "<xsl:value-of select="vzhled-a-chovani/vzhled"/>", 
        "Automaticky aktualizovat": "<xsl:value-of select="automaticky-aktualizovat"/>", 
        "MP3": "<xsl:value-of select="automaticky-pouzivat-pro-tyto-typy-souboru/mp3"/>", 
        "Ikona v panelu": "<xsl:value-of select="zobrazit-ikonu-v-panelu"/>", 
        "Resetovat nastaveni": "<xsl:value-of select="resetovat-nastaveni"/>",
        }
      </xsl:for-each>
      <xsl:for-each select="Video">
        {
        "Povolit": "<xsl:value-of select="povolit-video"/>",
        "Fullscreen": "<xsl:value-of select="obecne/vzdy-cela-obrazovka"/>",
        "Zoom": "<xsl:value-of select="zoom"/>",
        "rozliseni": "<xsl:value-of select="Obraz/rozliseni"/>",
        }
      </xsl:for-each>
      <xsl:for-each select="Zvuk">
        {
        "Id": "<xsl:value-of select="@idNast"/>",
        "Povolit zvuk": "<xsl:value-of select="povolit-zvuk"/>",
        "Hlasitost": "<xsl:value-of select="hlasitost"/>",
        "Vystupni zarizeni": "<xsl:value-of select="vystup"/>",
        }
      </xsl:for-each>
      <xsl:for-each select="vlastnosti-titulku">
        {
        "id titulků": <xsl:value-of select="@idTit"/>",
        "jazyk": "<xsl:value-of select="@jazykTit"/>",
        "velikost": "<xsl:value-of select="vlastnosti-titulku/velikost"/>",
        "Pismo": "<xsl:value-of select="pismo"/>",
        }
      </xsl:for-each>
    ]
  </xsl:template>

</xsl:stylesheet>