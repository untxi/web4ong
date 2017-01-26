<?php
include("bd.php");
$num_tec=0;
$nombre = $_POST["nombre"];
$resumen = $_POST["resumen"];
$sql = "INSERT INTO Grupo(nombre_grupo, resumen_grupo) VALUES ('$nombre','$resumen')";

	if ($conn->query($sql) == TRUE) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
$sql3="SELECT id_grupo FROM Grupo WHERE nombre_grupo = '$nombre' ORDER BY id_grupo ASC";
$result=$conn->query($sql3);
$id=0;
if ($result->num_rows>0){
    while($row = $result->fetch_assoc()){
    $id= $row["id_grupo"];
    }
}
$sql_aux;
foreach($_POST as $x => $x_value){
    if (strpos($x, 'obj') !== false) {
        $num_tec+=1;
        $sql_aux = "INSERT INTO Objetivo (id_grupo, contenido_objetivo) VALUES ('$id','$x_value')";
        if ($conn->query($sql_aux) == TRUE) {
		echo "New record created successfully";
	   } else {
		echo "Error: " . $sql_aux . "<br>" . $conn->error;
	   }
    }
}
$num_act=0;
foreach($_POST as $y => $y_value){
    if (strpos($y, 'act_nom') !== false) {
        $num_act+=1;
    }
}
$num_aux=1;
$nombre_act;
$fecha_act;
$lugar_act;
$doc_act;
$img_act;
$path1;
$path2;
mkdir("../uploads/".$id."/", 0777);
$target_dir="../uploads/".$id."/";
while ($num_aux<=$num_act){
	$nombre_act=$_POST["act_nom".$num_aux] ;
	$fecha_act=$_POST["act_fecha".$num_aux] ;
	$lugar_act=$_POST["act_lug".$num_aux] ;
	$doc_act=$_FILES["act_doc".$num_aux] ;
	move_uploaded_file($doc_act["tmp_name"],$target_dir.$doc_act["name"]);
    $path1=$target_dir.$doc_act["name"];
	$img_act=$_FILES["act_img".$num_aux] ;
	move_uploaded_file($img_act["tmp_name"],$target_dir.$img_act["name"]);
    $path2=$target_dir.$img_act["name"];
	$sql_aux = "INSERT INTO Actividad (id_grupo, nombre_actividad, fecha_actividad, lugar_actividad, doc_actividad, imagen_actividad) VALUES ('$id','$nombre_act','$fecha_act','$lugar_act','$path1','$path2')";
        if ($conn->query($sql_aux) == TRUE) {
		echo "New record created successfully";
	   } else {
		echo "Error: " . $sql_aux . "<br>" . $conn->error;
	   }
	$num_aux+=1;
}
?>