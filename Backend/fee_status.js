function fee_status()
{
    console.log(document.getElementById("month").value);
    fetch('../Backend/fee_status.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body:'month='+document.getElementById("month").value,     
    })
    .then(response => response.json())
    .then(stat => {
        console.log(stat);
        document.getElementById("month1").innerHTML = stat.month;   
        document.getElementById("status").innerHTML = stat.fee_status;
    });
}
