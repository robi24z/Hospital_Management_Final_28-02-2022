<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input[type=text], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.appoinments {
	width: 800px;
	height: 500px;
	margin-left: 200px;
	margin-top: 50px;
}

h1 {
	text-align: center;
	color: red;
	font-family: "Poppins", sans-serif;
}

body {
	background-color: white;
}

.button {
	background: linear-gradient(135deg, #f13a13 0%, #ff7c60 100%);
	padding: 15px;
	border: none;
	border-radius: 50px;
	color: white;
	font-weight: 400;
	font-size: 1.2rem;
	margin-top: 10px;
	width: 100%;
	letter-spacing: .11rem;
	outline: none;
}

.button:hover {
	transform: scale(1.05) translateY(-3px);
	box-shadow: 3px 3px 6px #38373785;
}
</style>
<script type="text/javascript">
	function validate() {
		var first_name = /^[a-z A-Z]+$/;
		var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[a-zA-Z]{1,4}$/;
		var mobile_valid = /^\d{10}$/;

		var fname = document.getElementById("fname");
		var dob = document.getElementById("dob");
		var email = document.getElementById("email");
		var mobile = document.getElementById("mobile");
		var gender = document.getElementById("gender");

		var appoinment = document.getElementById("appoinment");
		/* var today = new Date().toISOString().split('T')[0];
		document.getElementsByName("appoinmentdate")[0].setAttribute('min', today);
		 */
		var doctor = document.getElementById("doctor").value;

		if (!first_name.test(fname.value) || fname.value == '') {
			alert("Enter first name alphabets only....!");
			fname.focus();
			fname.style.background = '#f08080';
			return false;

		}
		if (dob.value == null || dob.value == "") {
			alert("enter date of birth..");
			dob.focus();
			return false;

		}
		if (!email_valid.test(email.value) || email.value == '') {
			alert("Enter valid email....!");
			email.focus();
			email.style.background = '#f08080';
			return false;
		}
		if (!mobile_valid.test(mobile.value) || mobile.value == "") {
			alert("Enter valid phone number..!");
			mobile.focus();
			return false;
		}

		if (appoinment.value == null || appoinment.value == "") {
			alert("select appoinemnt");
			appoinment.focus();
			return false;

		}

		if ((myform.gender[0].checked == false)
				&& (myform.gender[1].checked == false)
				&& (myform.gender[2].checked == false)) {
			alert("Please choose your Gender: Male or Female");
			return false;
		}

		if (document.getElementById("doctor").value == "sel") {
			alert("Please select value"); // prompt user
			document.getElementById("doctor").focus();
			return false;
		}

		return;

	}
</script>


</head>



<body>
	<h1>
		<br> <br>BOOK APPOINMENTS HERE
		<hr style="width: 50px; border: 5px solid red" class="w3-round">
	</h1>
	<div class="appoinments">


		<form name="myform" method="post" onsubmit="return validate()"
			action="connection.jsp">
			<label for="fname"><br> Name<br></label> <input type="text"
				id="fname" name="firstname" placeholder="Your name.."> <label
				for="dob"><br>Date Of Birth<br> <br></label> <input
				type="date" id="dob" class="date" name="dateofbirth"
				placeholder="DD/MM/YY" min='1930-01-01' max='2022-02-28'><br>
			<label for="email"><br>Email Id<br></label><input
				type="text" id="email" placeholder="someone123@gmail.com"
				name="email"> <br> <label for="mobile"><br>Mobile
				No<br></label><input type="text" id="mobile" name="mobile"
				placeholder="+91"> <label for="dob"><br>Appoinment
				Date:<br> <br></label> <input type="date" id="appoinment"
				class="date" name="appoinmentdate" placeholder="DD/MM/YY"
				min="2022-02-26"><br> <br>GENDER <br> <br>
			<input type="radio" id="gender" name="gender" value="male">MALE
			<input type="radio" name="gender" value="female">FEMALE <input
				type="radio" name="gender" value="other">OTHER <br> <br>
			<label for="doc">DEPARTMENT/DOCTOR:</label> <select name="doctor"
				id="doctor">
				<option value="sel">SELECT</option>
				<option value="neurology">DR Althaf(Neurology)</option>
				<option value="radiology">DR AJMAL(Radiology)</option>
				<option value="dermatology">DR NIFINA(Dermatology)</option>
				<option value="cardiology">DR SREELAKSHMI(Cardiology)</option>
				<option value="psychiatry">DR VIJAY(Psychiatry)</option>
				<option value="ent">DR DENNSON(ENT)</option>
				<option value="pediatrician">DR JUDE(Pediatrician)</option>
				<option value="physician">DR KAVYA(Physician)</option>
				<option value="anesthetics">DR RONY(Anesthetics)</option>
				<option value="gynecology">DR MERCY(Gynecology)</option>
				<option value="generalmedicine">DR LUCY(Genaral Medicine)</option>
				<option value="ophthamology">DR ROY (Ophthamology)</option>
				<option value="familymedicine">DR Varun(Family Medicine)</option>
				<option value="Pulmonologist">DR Varma(Pulmonologist)</option>
				<option value="dentalclinicaloral&maxillofacialsurgery">DR
					RINTO(Dental, Clinical, Oral & Maxillofacial Surgery)</option>




			</select> <input type="submit" name="register" value="submit">

		</form>


	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</html>