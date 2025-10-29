<?php 
session_start();
$sql = new PDO("mysql: host=localhost;dbname=parrainage", "root", "");
$email=$_POST['email'];
$password=$_POST['password'];

//recherche de l'user
$req=$sql->prepare("SELECT * FROM  parrain WHERE email=:email");
$req->bindParam(":email",$email);
$req->execute();
$user = $req->fetch();
if($user){

	//verifier le mot de passe 
$hashPassword = password_hash($_POST['password'], PASSWORD_DEFAULT); 
	// de verifier si le mot de passe existe
// on stoke les info dans la base de donnee
	$_SESSION['parrain_id']=$user['id'];
	$_SESSION['nom']=$user['nom'];
	$_SESSION['nom']=$user['cle'];
	//redirection 
		
		header("location: http://localhost/parrainage/index.php");
	}else{
	echo" utilisateur n'ont trouvé";
}








 ?>