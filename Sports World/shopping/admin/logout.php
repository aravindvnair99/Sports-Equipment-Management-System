<?php
session_start();
$_SESSION['alogin'] == "";
session_unset();
$_SESSION['errmsg'] = "You have successfully logged out ";
?>
<script language="javascript">
	document.location = "index.php";
</script>