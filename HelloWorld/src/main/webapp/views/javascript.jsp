<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<script type="text/javascript">
			function alternarPPg(){
					document.getElementById("pgP").style.display = "block";
					document.getElementById("pgS").style.display = "none";
				}

			function alternarSPg(){
				document.getElementById("pgP").style.display = "none";
				document.getElementById("pgS").style.display = "block";
				}
		</script>
		<style type="text/css">
			body {
				background-color: gray;
				transform: scale(1.5);
				transform-origin: top left;
			}
			
			div {
				background-color: white;
				border: thin solid black;
				padding: 0.8rem;
			}
			
			.aba {
				width: 5rem;
				float:left;
				border-bottom: 0;
			}
			
			.aba:hover {
				background: lightgray;
			}
			
			.pg {
				width: 50rem;
				clear: both;
			}
			
			#pgS {
				display: none;
			}
		</style>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
<body>
	
	<div class="aba" id="btnPAba" onclick="alternarPPg()">
		Pagina 1
	</div>
	<div class="aba" id="btnSAba" onclick="alternarSPg()">
		Pagina 2
	</div>
	<div class="pg" id="pgP">
		Está é a pagina 1
	</div>
	<div class="pg" id="pgS">
		Está é a pagina 2
	</div>
	
</body>
</html>