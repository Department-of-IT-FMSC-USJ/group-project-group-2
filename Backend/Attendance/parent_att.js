let StudentID;


function att_status()
{
    fetch('../../Backend/Attendance/parent_attendance.php')
    .then(response=>response.json())
    .then(stat=>{document.getElementById("att_status").innerHTML=stat;
    console.log(stat);
    if(stat=="Present")
    {
        
        console.log("YES!!!");
        document.getElementById("stat").innerHTML+="<i class='fa-regular fa-face-smile fa-beat' style='color: #02d472;'></i>";
    }
    else{
        console.log("NO!!!");
        document.getElementById("stat").innerHTML+="<i class='fa-regular fa-face-frown fa-beat-fade' style='color: #d3871d;'></i>";
    }
    })
    .catch(err => console.error(err));

    
}

function tdy_att()
{
    fetch('../../Backend/Attendance/st_att_per.php')
    .then(response=>response.text())
    .then(tdy=>{document.getElementById("tdy").innerHTML=tdy+"%";

        let perc=parseFloat(tdy);
        if(perc>=80){
            document.getElementById("tdy").style.color="green";
        }
        else if(perc>=40){
            document.getElementById("tdy").style.color="yellow";
        }
        else{
            document.getElementById("tdy").style.color="red";
        }
    });
}

function student()
{
    StudentID =document.getElementById("stu").value;
    console.log(StudentID);
}
    
