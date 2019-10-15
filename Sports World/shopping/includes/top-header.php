<?php 
//session_start();

?>

<div class="top-bar animate-dropdown" style="background:#D4E6F1; color: black;">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i>Welcome -<?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php } ?>

					<li><a href="my-account.php" style="color: black;" ><i class="icon fa fa-user" style="color: black;"></i>My Account</a></li>
					<li><a href="my-wishlist.php" style="color: black;"><i class="icon fa fa-heart" style="color: black;"></i>Wishlist</a></li>
					<li><a href="my-cart.php" style="color: black;"><i class="icon fa fa-shopping-cart" style="color: black;"></i>My Cart</a></li>
					<li><a href="http://localhost/Sports%20Equipment%20Management%20Center/Sports%20World/shopping/admin/" style="color: black;"><i class="icon fa fa-key" style="color: black;"></i>Admin</a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
<li><a href="login.php" style="color: black;"><i class="icon fa fa-sign-in" style="color: black;"></i>Login</a></li>
<?php }
else{ ?>
	
				<li><a href="logout.php" style="color: black;"><i class="icon fa fa-sign-out"></i>Logout</a></li>
				<?php } ?>	
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<a href="track-orders.php" class="dropdown-toggle" style="color: black;"><span class="key">Track Order</b></a>
						
					</li>

				
				</ul>
			</div>
			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->