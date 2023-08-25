<!DOCTYPE html>
<html>

<head>
    <title>
        JavaScript CRUD Example Tutorial
    </title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<div class="std">
	<h1><center>Student Details</center></h1>
			<div class="student_form">
			<div class="std_form">
                <form onsubmit="event.preventDefault();" autocomplete="off">
                    <div>
                        <label>Register No: </label>
                        <input type="text" id="registerNo" placeholder="Register No" required="required">
                    </div>
                    <div>
                        <label>Student Name:  </label>
                        <input type="text" id="studName" placeholder="Student Name" required="required">
                    </div>
                    <div>
                        <label>Date of Birth: </label>
                        <input type="date" id="dob" placeholder="Date of Birth" required="required">
                    </div>
                    <div>
                        <label>Email Id: </label>
                        <input type="email" id="emailId" placeholder="example@gmail.com" required="required">
                    </div>
                    
                    <div>
                        <label>Department: </label>
                        <select id="department" required="required">
	                        <option value="select dept">select department</option>
	                        <option value="B.E CSE">B.E CSE</option>
	                        <option value="B.E ECE">B.E ECE</option>
	                        <option value="B.E IT">B.E IT</option>
                    </select><br><br>
                    </div>
                    
                    <div>
                        <label>Subject Name: </label>
                        <input type="checkbox" id="subject" name="subject" value="Java"> Java
            			<input type="checkbox" id="subject" name="subject" value="Data Structure"> Data Structure
            			<input type="checkbox" id="subject" name="subject" value="Oracle"> Oracle 
            			<br><br>
                    </div>
                    
                    <div>
                        <label>Course Type: </label>
                        <input type="radio" id="course" name="course" value="AddOn">Add On
                    	<input type="radio" id="course" name="course" value="Non AddOn">Non AddOn
                    	<br><br>
                    </div>
                    
                    <div  class="form-action-buttons">
	                    <button onclick="onFormSubmit()" id="submit"> Submit</button>
	                	<button onclick="resetForm()" id="reset"> Reset</button>
                    </div>
                    
                    
                    
                </form>
                </div>
                </div>
		<br/>
		<div class = "student-table">
                <table id="studentList">
                    <thead>
                        <tr>
                            <th>Register No</th>
							<th>Student Name</th>
							<th>Date of Birth</th>
							<th>Email ID</th>
							<th>Department</th>
							<th>Subject Name</th>
							<th>Course Type</th>
							<th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
        </div>
        </div>
    <script src="script.js"></script>
</body>
</html>