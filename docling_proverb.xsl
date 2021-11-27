<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
>

<!-- last change: ST 2021-03-31 -->
<xsl:template name="proverb_extern">
# proverb "<xsl:value-of select="replace(., '\+', '')"/>"
:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each> a ontolex:LexicalEntry , ontolex:MultiwordExpression ;
  decomp:subterm deaf:<xsl:value-of select="$element_data/root/element[1]/lemma"/> ;
  lexinfo:termType lexinfo:proverb ;
  rdfs:label "<xsl:value-of select="replace(., '\+', '')"/>"@fro .
</xsl:template>
</xsl:stylesheet>
