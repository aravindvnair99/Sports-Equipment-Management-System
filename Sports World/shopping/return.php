<?php

session_start();


require_once("./includes/config.php");

if(isset($_GET)) {

	 mysqli_query($con,"delete from orders where id = '".$_GET['oid']."'");
                  $_SESSION['delmsg']="Product deleted !!";
		header("Location: order-history.php");
		exit();
	} else {
		echo "Error";
	}


//if(isset($_GET['del']))
		  // {
		  //         mysqli_query($con,"delete from products where id = '".$_GET['id']."'");
    //               $_SESSION['delmsg']="Product deleted !!";
		  // }
