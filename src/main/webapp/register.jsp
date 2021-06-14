<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="row" style="text-align: center">
		<form class="col s12">
			<div class="row">
				<div class="input-field col s6">
					<input id="full_name" name="full_name" type="text" class="validate">
					<label for="full_name">Full Name</label>
				</div>

				<div class="input-field col s6 ">
					<i class="material-icons prefix">phone_android</i> <input
						id="mobile" type="tel" class="validate" data-length="10">
					<label for="mobile">Mobile</label>
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6 ">
					<input id="advance_amount" type="number" class="validate">
					<label for="advance_amount">Advance Amount</label>
				</div>

				<div class="input-field col s6 ">
					<input id="rent_amount" type="number" class="validate"> <label
						for="rent_amount">Rent Amount</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s3 " align="left">
					<p>
						<label> <input class="with-gap" name="terms" type="radio"
							align="left" /> <span>Submitted T&C Document</span>
						</label> <label> <input class="with-gap" name="terms" type="radio"
							align="left" /> <span>Not Yet Submitted</span>
						</label>
					</p>
				</div>
				<div class="input-field col s3 " align="left">
					<p>
						<label> <input class="with-gap" name="induction"
							type="radio" align="left" /> <span>Induction Done</span><br>
						</label> <label> <input class="with-gap" name="induction"
							type="radio" align="left" /> <span>Not Yet Done</span>
						</label>
					</p>
				</div>

				<div class="input-field col s3">

					<!-- Dropdown Trigger -->
					<a class='dropdown-trigger btn' href='#' data-target='room_number'
						style="background-color: #f06292; font-family: Calibri;">Select
						Room!</a>

					<!-- Dropdown Structure -->
					<ul id='room_number' class='dropdown-content white'
						style="background-color: #f06292; font-family: Calibri; color: #ffffff;">
						<li><a href="#!">F1</a></li>
						<li><a href="#!">F2</a></li>
						<li><a href="#!">F3</a></li>
						<li><a href="#!">F4</a></li>
						<li class="divider" tabindex="-1"></li>
						<li><a href="#!">S1</a></li>
						<li><a href="#!">S2</a></li>
						<li><a href="#!">S3</a></li>
						<li><a href="#!">S4</a></li>
						<li><a href="#!">S5</a></li>
						<li><a href="#!">S6</a></li>
						<li><a href="#!">S7</a></li>
						<li><a href="#!">S8</a></li>
						<li><a href="#!">S9</a></li>
					</ul>

				</div>


				<div class="input-field col s3">

					<!-- Dropdown Trigger -->
					<a class='dropdown-trigger btn' href='#'
						data-target='marital_status'
						style="background-color: #f06292; font-family: Calibri;">Marital
						Status</a>

					<!-- Dropdown Structure -->
					<ul id='marital_status' class='dropdown-content white'
						style="background-color: #f06292; font-family: Calibri; color: #ffffff;">
						<li><a href="#!">Never Married</a></li>
						<li><a href="#!">Married</a></li>
						<li><a href="#!">Divorced</a></li>

					</ul>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s4 ">
					<label>Marital Status</label> <select class="browser-default">
						<option value="1">Never Married</option>
						<option value="2">Married</option>
						<option value="3">Divorced</option>
					</select>
				</div>
				<div class="input-field col s4 mb-3">
					<label for="resident_picture" class="form-label">Resident
						Picture</label> <input class="form-control" type="file"
						id="resident_picture">
				</div>
				<div class="input-field col s4 mb-3">
					<label for="resident_id_proof" class="form-label">Resident
						ID</label> <input class="form-control" type="file" id="resident_id_proof">
				</div>
			</div>
			<div class="row">
				<div class="input-field col s9">
					<textarea id="address" class="materialize-textarea"></textarea>
					<label for="address">Address</label>
				</div>
				<div class="input-field col s3 ">
					<input id="email" type="email" class="validate"> <label
						for="email">Email</label>
				</div>
			</div>


<button class="btn waves-effect waves-light " type="submit" name="action" 
style="background-color:#f06292;font-family:Calibri;">Submit
    <i class="material-icons right">send</i>
  </button>

		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script>
		var dropdowns = document.querySelectorAll('.dropdown-trigger')
		for (var i = 0; i < dropdowns.length; i++) {
			M.Dropdown.init(dropdowns[i]);
		}

		document.addEventListener('DOMContentLoaded', function() {
			var elems = document.querySelectorAll('select');
			var instances = M.FormSelect.init(elems, options);
		});

		$(document).ready(function() {
			$('select').formSelect();
		});
	</script>
</body>
<%@include file="footer.jsp"%>
</html>