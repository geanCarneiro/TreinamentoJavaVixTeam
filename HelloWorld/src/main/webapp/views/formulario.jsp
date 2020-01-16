<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	body {
		transform: scale(1.5);
		transform-origin: top center;
	}
	
	table {
		margin: auto;
		margin-top: 2rem;
	}
	
	tr > th {
		color: white;
		background: #333333;
		font-size: 1.5rem;
		font-weight: bold;
	}
	
	tr > td:nth-child(odd) {
		text-align: right;
		background-color: #EEEEEE;
	}
	
	tr > td > input {
		width: 100%;
	}
	
	tr > td[colspan="2"] {
		text-align: center;
		background-color: unset;
	}
	
</style>
<meta charset="ISO-8859-1">
<title>Formulário</title>
</head>
<body>
	<table>
		<tr>
		<th colspan="2">Meu Primeiro Formulário</th>
		</tr>
		<tr>
			<td>Nome:</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>Idade:</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>Data de Nascimento:</td>
			<td><input type="date"></td>
		</tr>
		<tr>
			<td>Sexo:</td>
			<td>
				<select>
					<option>Selecione</option>
					<option value="masc">Masculino</option>
					<option value="femi">Feminino</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				Informações adicionais:  <br>
				<textarea rows="3" cols="25"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="Salvar" style="width: unset">
			</td>
		</tr>
	</table>
</body>
</html>