function getStudents() {
    
    document.getElementById("attForm").style.display = "block";
    document.getElementById("rect").style.width = '1000px';
    document.getElementById("rect").style.justifyContent = 'space-evenly';
    

    fetch('../../Backend/Attendance/teacher_attendance.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: 'class='+document.getElementById("class").value
    })
        .then(response => response.json())
        .then(students => {
            students.forEach(student=>addRow(student.stu_id,student.fullName));
        });

}

function addRow(id, sName) {
    document.getElementById("stuAttTable").innerHTML += "<tr><td>" + id + "</td><td>" + sName + "</td><td><input type='checkbox' name='status[]' value='" + id + "'></td></tr>";
}

function add_class()
{
    fetch('../../Backend/Attendance/classnames.php')
    .then(response=>response.json())
    .then(classN=>{classN.forEach(classes=>document.getElementById("class").innerHTML+=`<option value=${classes}>Class ${classes}</option>`);});
}