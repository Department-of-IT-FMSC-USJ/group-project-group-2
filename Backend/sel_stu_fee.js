function sel_stu()
{
    fetch('../Backend/Attendance/select_student.php')
    .then(response=>response.json())
    .then(student=>{student.forEach(stu=>document.getElementById("stu").innerHTML+=`<option value="${stu.stu_id}">${stu.stu_id} - ${stu.f_name}</option>`);
    })
    .catch(error => console.error("JSON parsing error:", error));
}