var selectedRow = null

function onFormSubmit() {
	var formData = readFormData();
	insertNewRecord(formData);

}


function readFormData() {
	var formData = {};
	formData["registerNo"] = document.getElementById("registerNo").value;
	formData["studName"] = document.getElementById("studName").value;
	formData["dob"] = document.getElementById("dob").value;
	formData["emailId"] = document.getElementById("emailId").value;
	formData["department"] = document.getElementById("department").value;
	
	
	
	const subject_name = document.getElementsByName('subject');
    let sub = '';
    for (var i = 0; i < subject_name.length; i++) {
        if (subject_name[i].checked) {
            sub += subject_name[i].value + ", ";
        }
    }
    formData["subject"] = sub;
	
	
	// radio button
	const course_type = document.getElementsByName('course');
    let type = '';
    for (var i = 0; i < course_type.length; i++) {
        if (course_type[i].checked) {
            type += course_type[i].value;
        }
	formData["course"] = type;
 

    }

	return formData;
}

function insertNewRecord(data) {
	var table = document.getElementById("studentList").getElementsByTagName('tbody')[0];
	var newRow = table.insertRow(table.length);
	cell_1 = newRow.insertCell(0);
	cell_1.innerHTML = data.registerNo;

	cell_2 = newRow.insertCell(1);
	cell_2.innerHTML = data.studName;

	cell_3 = newRow.insertCell(2);
	cell_3.innerHTML = data.dob;

	cell_4 = newRow.insertCell(3);
	cell_4.innerHTML = data.emailId;

	cell_5 = newRow.insertCell(4);
	cell_5.innerHTML = data.department;

	cell_6 = newRow.insertCell(5);
	cell_6.innerHTML = data.subject;

	cell_7 = newRow.insertCell(6);
	cell_7.innerHTML = data.course;

	cell_8 = newRow.insertCell(7);
	cell_8.innerHTML = `<a onClick="onDelete(this)">Delete</a>`;
}

function resetForm() {
	document.getElementById("registerNo").value = '';
	document.getElementById("studName").value = '';
	document.getElementById("dob").value = '';
	document.getElementById("emailId").value = '';
	document.getElementById("department").value = '';
	document.getElementById("subject").value = '';
	document.getElementById("course").value = '';
	selectedRow = null;
}


function onDelete(td) {
	if (confirm('Are you sure to delete this record ?')) {
		row = td.parentElement.parentElement;
		document.getElementById("studentList").deleteRow(row.rowIndex);
		resetForm();
	}
}