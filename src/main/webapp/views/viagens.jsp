<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Projeto de aprendizado</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}css/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}css/dist/adminlte.min.css">



</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="/" class="brand-link"> <img
			src="data:image/jpeg;base64,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"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">Arpa Sistemas</span>
			</a>


			<!-- Sidebar Menu -->
			<nav class="mt-5">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								Agendamentos <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a class="nav-link"> <i
									class="far fa-circle nav-icon"></i>
									<p>Viagens</p>
							</a></li>
						</ul></li>
				</ul>
			</nav>
		</aside>

		<div style="overflow:scroll ;">
			<!-- Content Wrapper. Contains page content -->
			<div style="position: relative;" class="content-wrapper d-flex-justify-content-center">
				<div class="d-flex justify-content-center"
					>
					
	
					<!-- Main content -->
					<section class="content ml-3" style="margin: 0 auto !important;">
						<div class="container-fluid ">
							<div class="row">
								<!-- left column -->
								<div class="col-md-5 mt-3 ml-5"   >
									<!-- jquery validation -->
									<div class="card card-primary" style="width: 500px;">
										<div class="card-header">
											<h3 class="card-title">Alterações de viagens</h3><div class="d-flex justify-content-end"> <a href="/"><i class="bi bi-plus-circle-fill "></i><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16"> <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/> </svg></a>
										</div></div>
										<!-- /.card-header -->
	
										<c:forEach var="viagem" items="${viagens}">
											<div class="row">
												<div class="col-xl-9 mb-4 mt-4 mx-auto">
													<div class="card">
														<div class="card-body">
															<div
																class="d-flex justify-content-between align-items-center">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/png;base64,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"
																		alt="" style="width: 45px; height: 45px"
																		class="rounded-circle" />
																	<div class="ms-3">
																		<p class="fw-bold mb-1">${viagem.username}</p>
																		<p class="text-muted mb-0">${viagem.email}</p>
																	</div>
																</div>
																<span class="badge rounded-pill badge-success">${viagem.cidade}-${viagem.uf}
																</span>
															</div>
														</div>
														<div
															class="card-footer border-0 bg-light p-2 d-flex justify-content-center">
															<a class="btn btn-link m-0 text-reset"
																href="/${viagem.id}" role="button"
																data-ripple-color="primary">Update<i
																class="bi bi-pencil-square"></i> <br>
															<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor"
																	class="bi bi-pencil-square" viewBox="0 0 16 16"> <path
																		d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" /> <path
																		fill-rule="evenodd"
																		d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" /> </svg>
															</a> <a class="btn btn-link m-0 text-reset"
																href="/viagens/delete/${viagem.id}" role="button"
																data-ripple-color="primary">Delete<br>
															<i class="bi bi-trash3-fill"> </i> <svg
																	xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor"
																	class="bi bi-trash3-fill" viewBox="0 0 16 16"> <path
																		d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z" /> </svg>
															</a>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</section>
	
					<!-- /.card-body -->
	
				</div>
				<!-- /.card -->
			</div>
		</div>
		<!--/.col (left) -->
		<!-- right column -->
		<div class="col-md-6"></div>
		<!--/.col (right) -->
	</div>
	<!-- /.row -->

	<!-- /.container-fluid -->

	<!-- /.content -->
	</div>
	</div>
	<!-- /.content-wrapper -->


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}js/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}js/bootstrap/bootstrap.bundle.min.js"></script>
	<!-- jquery-validation -->
	<script
		src="${pageContext.request.contextPath}js/jquery/jquery-validation/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}js/jquery/jquery-validation/additional-methods.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath}js/dist/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<!-- <script src="${pageContext.request.contextPath}js/dist/demo.js"></script> -->


	<!-- Page specific script -->


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
	//});
</script>
</body>
</html>
