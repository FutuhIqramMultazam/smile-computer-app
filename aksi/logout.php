<?php
session_start();

if(!isset($_SESSION['userSession']))
{
	header("Location: ../");
}
else if(isset($_SESSION['userSession'])!="")
{
	header("Location: ../");
}

if(isset($_GET['logout']))
{
	session_destroy();
	unset($_SESSION['userSession']);
	header("Location: ../");
}
?>
