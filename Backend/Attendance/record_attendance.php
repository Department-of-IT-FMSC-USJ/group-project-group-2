<?php

include '../db.php';
$stat=[];

if(isset($_POST['status']))
    {
        $present=$_POST['status'];

        $checkdate='select status from date where date=curdate()';

        $result=$conn->query($checkdate);

        if($result)
        {
           $stat=$result->fetch_assoc(); 
        }
        

        if($stat!=null && $stat['status']=='Yes')
        {

            foreach($present as $stuId)
            {
                echo $stuId;
                $sql2="select if (curdate() in (select date from attendance where Stu_ID=$stuId),'Yes','No') as status";
                

                $result=$conn->query($sql2);

                $row=$result->fetch_assoc();

                if ($row['status']=='Yes')
                {
                    echo 'Attendance marked already';
                }
                else 
                {
                    $sql="insert into attendance values ($stuId,curdate(),'Present')";
                    $run=$conn->query($sql);
                    header("Location:../../Frontend/Attendance/teacher_attendance.html");
                }
            }
        }
        else
        {
            echo "<h2 style='color:red; background-color:aqua;'>Today is not a school day!</h2>";

        } 
    }


?>