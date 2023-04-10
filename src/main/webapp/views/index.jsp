<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Projeto de aprendizado</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}css/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}css/dist/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini" >
	<div class="wrapper" >
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<a href="/" class="brand-link"> <img
				src="data:image/jpeg;base64,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" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">Arpa Sistemas</span>
			</a>

				<nav class="mt-5">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Agendamentos <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="viagens"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Viagens</p>
								</a></li>
							</ul></li>
							</ul>
							</nav>
		</aside>
		<div class="content-wrapper d-flex-justify-content-center">
			<div class="col-sm-9 " style="margin: 0;position: fixed;top: 34%;left: 52%; transform: translate(-12%, -50%); ">

			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-9">
							<h1>Agendamento</h1>
						</div>
					</div>
				</div>
			</section>
			<section class="content">
				<div class="container-fluid ">
					<div   class="row">
						<div class="col-md-5">
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">
										Preencha os campos
									</h3>
								</div>
								<form action="/viagens" id="quickForm">
									<div class="card-body">
										<div class="form-group">
											<label style="font-variant: small-caps;" for="exampleInputEmail1">Email</label> <input
												type="email" name="email" class="form-control"
												id="email" placeholder="Digite seu email">
										</div>
											<label style="font-variant: small-caps;" for="Nome">Nome</label> 
											<input
												type="text" name="nome" class="form-control"
												id="nome" placeholder="Digite seu nome">
											<br>
											<label for="uf">Local de partida</label>
											<br>
												<label style="padding-left: 1%; font-style: italic; font-variant: small-caps;" for="Estado">Estado</label>
											<br>
													<select onchange="getCity()" id="uf" style="color: grey;" required class="form-select" aria-label="Estado">
													<option value="" disabled selected>Selecione seu Estado...</option>
													</select>
											<br>
												<label style="padding-left: 1%; font-style: italic; font-variant: small-caps;" for="cidade">Cidade</label>
											<br>
													<select  style="color: grey;" required id="cidade" class="form-select" aria-label="Cidade">
													<option value="" disabled selected>Selecione sua cidade...</option>
												</select>											
											</div>	
									<div class="card-footer">
										<button onclick="submitData()" class="btn btn-primary">Submit</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-6"></div>
					</div>
				</div>
			</section>
			</div>
		</div>
		<aside class="control-sidebar control-sidebar-dark">
		</aside>
	</div>
	<script src="${pageContext.request.contextPath}js/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}js/bootstrap/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}js/jquery/jquery-validation/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}js/jquery/jquery-validation/additional-methods.min.js"></script>
	<script src="${pageContext.request.contextPath}js/dist/adminlte.min.js"></script>
	<script src="bootstrap.js"></script>
	<script>

	

	function getState(){
		$.ajax({
            url: "https://servicodados.ibge.gov.br/api/v1/localidades/estados",
            method: "GET",
            headers: {
				"Accept": "application/json"
            },
            success: function(data){
              	data.forEach(element => {
					$("#uf").append('<option value="'+element.sigla+'">'+element.nome+'</option>');
			  });
			},
			error: function(error){
				console.log(error);
			},
		})
	}
	function getCity(){
		let state = $("#uf").val(); 	
	
	$.ajax({
		type: "GET",
		url: "https://servicodados.ibge.gov.br/api/v1/localidades/estados/"+document.getElementById("uf").value+"/municipios",
        success: function(data) {
			console.log(data);
			data.forEach(element => {
                console.log(element);
            });
			$("#cidade").empty(); 
			data.forEach(element => {
				$("#cidade").append('<option value="'+element.nome+'">'+element.nome+'</option>');
            });
		}
	})
}
	function submitData(){
		let name = $("#nome").val();
		let email = $("#email").val();
		let uf = $("#uf").val();
		let cidade = $("#cidade").val();
		var jayson = '{"username": "'+name+'","email": "'+email+'", "cidade": "'+cidade+'", "uf": "'+uf+'" }';
		console.log(jayson);
		$.ajax({
			type: "POST",
			url: "http://localhost:8080/posts",
			data: jayson,
			contentType: "application/json",
			success: function(data){
				alert("Formulariu sucesso!" );
			}
		})
		window.location.href = "/viagens";
	}

	getState();

	//  $('#quickForm').validate({
	//    rules: {
	//      email: {
	//        required: true,
	//        email: true,
	//      },
	//    },
	//    messages: {
	//      email: {
	//        required: "Por favor informe um email vï¿½lido",
	// 	   minlength: 2
	//      },
	//    },

	//    errorElement: 'span',
	//    errorPlacement: function (error, element) {
	//      error.addClass('invalid-feedback');
	//      element.closest('.form-group').append(error);
	//    },
	//    highlight: function (element, errorClass, validClass) {
	//      $(element).addClass('is-invalid');
	//    },
	//    unhighlight: function (element, errorClass, validClass) {
	//      $(element).removeClass('is-invalid');
	//    }
	//  });
	// });
</script>
</body>
</html>
