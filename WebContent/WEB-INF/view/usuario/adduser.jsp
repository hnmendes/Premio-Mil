<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/materialize/css/materialize.min.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/materialize/js/materialize.min.js"></script>

<c:import url="/WEB-INF/view/imports/header.jsp"/>
<c:import url="/WEB-INF/view/imports/nav.jsp"/>

	<h4>Cadastro</h4>
	
	<div class="row">
	<form class="col s12" action="save" method="post" enctype="multipart/form-data">
		
   <div class="row">
    <div class="col s12 m6">
      <div class="card">
        <div class="card-content">
          	<div class="row">
			<div class="input-field col s6">
				<input id="nome" type="text" name="nome">
				<label for="nome">Nome</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input id="email" type="email" name="email">
				<label for="email">Email</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input id="senha" type="password" name="senha">
				<label for="senha">Senha</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input id="dataNascimento" type="text" name="dataNascimento" onkeyup="formatar(this,'##/##/####',event)" maxlength="10">
				<label for="dataNascimento">Data de Nascimento</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<input type="number" name="numeroSorte">
				<label for="numeroSorte">Número da Sorte</label>
			</div>
		</div>
		
		
		
		 <div class="file-field input-field">
        		<span style="color:green;"><button>Selecione sua foto</button></span>
        		<input type="file" name="file">
    	</div>
    	
    	<br>
		
		<div class="row">
  			
  		<button class="btn waves-effect waves-light #1a237e indigo darken-4" type="submit" name="action">Cadastrar</button>
        <button class="btn waves-effect waves-light #1a231d indigo darken-4" type="reset">Apagar campos</button>	
        </div>
        </div>
      </div>
    </div>
  </div>
		
		</form>
	</div>
	
<c:import url="/WEB-INF/view/imports/scripts.jsp"/>
<c:import url="/WEB-INF/view/imports/footer.jsp"/>
