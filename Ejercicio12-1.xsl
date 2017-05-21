<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Clientes</title>
				<style>
					.tabla { display: table; width: 40%; font-family: Arial; }
					.fila { display: table-row; }
					.celda { display: table-cell; padding: 5px; border: 1px solid blue; }
				</style>
			</head>
			<body>
				<h1>Clientes</h1>
				<div class="tabla">
					<div class="fila" style="font-weight: bold;">
						<div class="celda">Nombre</div>
						<div class="celda">Dirección</div>
						<div class="celda">Teléfono</div>
					</div>
					<xsl:for-each select="clientes/cliente">
						<div class="fila">
							<div class="celda">
								<xsl:value-of select="nombre" />
							</div>
							<div class="celda">
								<xsl:value-of select="direccion" />
							</div>
							<div class="celda">
								<xsl:value-of select="telefono" />
							</div>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>