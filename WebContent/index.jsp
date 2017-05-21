<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="pvt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@	page errorPage="paginaErro.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IMC</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<form action="imc" method="post">
		<pvt:campoTexto name="massa" label="Massa:" />
		<pvt:campoTexto name="altura" label="Altura:" />
		<button type="submit">Calcular</button>
	</form>

	<p>
		IMC:
		<c:if test="${not  empty imc}">
			<fmt:formatNumber value="${imc}" pattern="#.##" /> kg/m²
		</c:if>
	</p>
	<br>
	<p>
		Classificação:
		<c:if test="${not empty classificacao}">
			${classificacao}
		</c:if>
	</p>
	<br>


	<c:import url="rodape.jsp" />
</body>
</html>