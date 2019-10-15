<?php
session_start();
$_SESSION['alogin']=="";
session_unset();
$_SESSION['errmsg']="You have successfully logout ";
?>
<script language="javascript">
document.location="index.php";
</script>
