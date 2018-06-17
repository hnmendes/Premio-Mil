<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="/WEB-INF/view/imports/header.jsp" />
<c:import url="/WEB-INF/view/imports/scripts.jsp" />
<c:import url="/WEB-INF/view/imports/nav.jsp" />

<h2 class="header">Pesquisar</h2>
<div class="card" style="max-width:700px;">
	<div class="card-content">
		<div>
			<form action="filter" class="col s12">
						
						<div class="row">	
							<div class="input-field col s6">
								<i class="material-icons prefix">account_circle</i> <input
									id="icon_prefix" type="text" name="nome" class="validate"> <label
									for="icon_prefix">Nome</label>
							</div>
						</div>
						
						<div class="row">
							<div class="input-field col s6">
								<i class="material-icons prefix">email</i> <input
									id="icon_telephone" type="email" name="email" class="validate"> <label
									for="icon_telephone">Email</label>
							</div>
						</div>
						
						<div class="row">
							<button class="btn waves-effect waves-light #1a237e indigo darken-4" type="submit" name="action">Procurar</button>
        					<button class="btn waves-effect waves-light #1a231d indigo darken-4" type="reset">Apagar campos</button>
						</div>
						
					</form>
				</div>
		</div>

	</div>

<div class="col s12 m7">
	<h2 class="header">Usuários</h2>
	<div class="card horizontal">
		<div class="card-stacked">
			<div class="card-content">

				<table>
					<thead>
						<tr>
							<th>Nome</th>
							<th>Email</th>
							<th>Data de Nascimento</th>
							<th>Número da sorte</th>
							<th>Imagem</th>
							<th>Ações</th>
						</tr>
					</thead>


					<tbody>
						<c:forEach var="usuario" items="${listaUsuario}">
							<tr>
								<td>${usuario.nome}</td>
								<td>${usuario.email}</td>
								<td><fmt:formatDate value="${usuario.dataNascimento}"
										pattern="dd/MM/yyyy" /></td>
								
								<td>${usuario.numeroSorte}</td>


								<c:choose>
									<c:when test="${not empty usuario.imagem}">
										<td><img
											src="<%=request.getContextPath()%>/resources/img/${usuario.imagem}"
											style="width: 30%;"></td>
									</c:when>
									<c:otherwise>
										<td>Imagem não carregada.</td>
									</c:otherwise>
								</c:choose>
								
								<td><a href="edit?id=${usuario.id}">Alterar</a> &nbsp; &nbsp;</td>
								<td><a href="delete?id=${usuario.id}">Remover</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>



			</div>
		</div>
	</div>
</div>

</div>







<c:import url="/WEB-INF/view/imports/footer.jsp" />
