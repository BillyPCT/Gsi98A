<?php
$connection =new mysqli("localhost","root","","authentikasi");

$id=$_POST['id'];
$result=mysqli_query($connection,"delete from catatan where id=".$id);

if($result){
    echo json_encode(['message'=>'Data berhasil terhapus']);
    
}
else{
    echo json_encode(['message'=>'Data gagal terhapus']);
}

?>
