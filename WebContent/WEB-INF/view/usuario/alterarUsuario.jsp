<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="/WEB-INF/view/imports/header.jsp" />
<c:import url="/WEB-INF/view/imports/scripts.jsp" />
<c:import url="/WEB-INF/view/imports/nav.jsp" />

<h4>Atualizar</h4>
	
	<div class="row">
	<form class="col s12" action="update" method="post" enctype="multipart/form-data">
	
	<input type="hidden" name="id" value="${usuario.id}">
   <div class="row">
    <div class="col s12 m6">
      <div class="card">
        <div class="card-content">
          	<div class="row">
			<div class="input-field col s6">
				<input id="nome" type="text" name="nome" value="${usuario.nome}">
				<label for="nome">Nome</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input id="email" type="email" name="email" value="${usuario.email}">
				<label for="email">Email</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input id="senha" type="password" name="senha" value="${usuario.senha}">
				<label for="senha">Senha</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input id="dataNascimento" type="text" name="dataNascimento" maxlength="10" value = "<fmt:formatDate value = '${usuario.dataNascimento}' pattern='dd/MM/yyyy'/>" />
				<label for="dataNascimento">Data de Nascimento</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input type="number" name="numeroSorte" value="${usuario.numeroSorte}">
				<label for="numeroSorte">Número da Sorte</label>
			</div>
		</div>
		
		
		
		 <div class="file-field input-field">
		 		<img src="<%=request.getContextPath()%>/resources/img/${usuario.imagem}"/>
        		<span style="color:green;"><button>Editar Imagem</button></span>
        		<input type="file" name="file">
    	</div>
    	
    	<br>
		
		<div class="row">
  			
  		<button class="btn waves-effect waves-light #1a237e indigo darken-4" type="submit" name="action">Editar</button>
        <button class="btn waves-effect waves-light #1a231d indigo darken-4" type="reset">Apagar campos</button>	
        </div>
        </div>
      </div>
    </div>
  </div>
		
		</form>
	</div>


<c:import url="/WEB-INF/view/imports/footer.jsp" />
