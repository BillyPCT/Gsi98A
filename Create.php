<?php
$connection =new mysqli("localhost","root","","authentikasi");
$title =$_POST['title'];
$content=$_POST['content'];


$result =mysqli_query($connection,
"insert into catatan set title='$title',content='$content'");

if($result){
    echo json_encode(['message'=>'Data input sukses']);

}
?>
