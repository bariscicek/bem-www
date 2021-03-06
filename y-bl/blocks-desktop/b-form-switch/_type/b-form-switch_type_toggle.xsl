<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:x="http://www.yandex.ru/xscript"
    xmlns:lego="https://lego.yandex-team.ru"
    exclude-result-prefixes=" x lego "
    version="1.0">

<xsl:template match="lego:b-form-switch[@lego:type = 'toggle']" mode="lego:inner-content">
    <xsl:apply-templates select="lego:option[position() = 1]" mode="lego:label"/>
    <xsl:apply-imports/>
    <xsl:apply-templates select="lego:option[position() = 2]" mode="lego:label"/>
</xsl:template>

<xsl:template match="lego:b-form-switch[@lego:type = 'toggle']/lego:option" mode="lego:label-content">
    <span class="b-form-switch__label-inner">
        <xsl:value-of select="."/>
    </span>
</xsl:template>

</xsl:stylesheet>
