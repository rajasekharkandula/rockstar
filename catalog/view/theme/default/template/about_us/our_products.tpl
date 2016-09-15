<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<style>
	
.sub-head a{color:#000;}
.sub-head>li>a:hover{color:#fff;}

.p-head{text-transform: uppercase; font-size: 18px; margin-bottom: 4px; color: #EA192D; font-weight: 600; margin-top: 10px;} 
.ph-content{ font-size: 15px; text-transform: uppercase; line-height: 22px;} 
.ps-head{margin: 20px 0px 3px 0px; font-size: 16px; text-transform: uppercase; color: #002343; font-weight: 600;} 
.psh-content{line-height:16px;}

</style>
</head>
<body class="<?php echo $class; ?>">
<header style="margin:8px 10px 6px;">
  <div class="container" style="width:100%;">
    <div class="row">
      <div class="col-sm-5">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" width="360"/></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-7">
	  <nav id="menu" class="navbar" style="min-height:20px;">
			<div class="navbar-header">
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
			  <ul class="nav navbar-nav" style="width:100%;">
				<li><a href="#">ABOUT US</a></li>
				<li><a href="<?php echo $home;?>">SHOP ONLINE</a></li>
				<li class="scocial">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-google-plus"></i></a>
				</li>
			  </ul>
			</div>
		  </nav>
	  </div>
     </div>
  </div>
</header>
<div class="h-border"></div>
<?php echo $sub_header; ?>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			
		</div>
		<div class="col-md-6">
			<h3 class="p-head">What`s worn, and what should be worn </h3>
			<p class="ph-content">Rockstar jeans has fashion for everyone - right for the college - going dude. to a professional seeking uber - cool casuals to look the part any day of the week.</p>
			<div class="row">
				<div class="col-md-6">
					<h3 class="ps-head">Rockstar Jeans</h3>
					<p class="psh-content">Denims are a must for everyone`s wordrobs.This is a collection of denim wear that stashes a whole lot of jeans,spanning right from basics to premium.It`s a pool that cuts across a collection of hip denim shirts as well</p>
					<h3 class="ps-head">Rockstar Core</h3>
					<p class="psh-content">A line of every day Casual wear that comprises T-shirts,denim,Chinos and Shirts.It`sall the clothing that one can`t do with out. be it for college or a Friaday evenoing out or a dinner date.It features essentials for every wordrobe in cuts and styles modish enough to amp up every corner of the style department.</p>
					<div class="box box-bl">
					<h3 class="ps-head">Rockstar SELECT</h3>
					<p class="psh-content">A collection for those who like to pick from the best that`s around. Every garment exudes an air of superior quality which comes from a variety of factores like pre-fabric treatment,the wash, the finishing, right down to the craft.Very urban in looks, it`s for folks who can`t do without a dress-box that flaunts the newest in jeans. Trousers,Shirts,Denim Shirts and T-shirts. </p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="box box-rl">
						<h3 class="ps-head">Rockstar Privilege</h3>
						<p class="psh-content">A collection that`s meant for someone who looks for serious fashion but something that`s also a wee but subdued, yet stands apart in its own way.It comprises Formals,Dress Shirts and Semi-Formals.</p>
						<p class="psh-content">Coming to our fashion-creators,Rockstar Jeans has a team of in-house Fashion Designers who know how to impress the market with every new wavw of trends .On top of that. We are always looking to expand our product line and product width to yours and customers delight. </p>
						<h3 class="p-head">GET TO US, LIKE NOW. </h3>
						<p class="psh-content">Product enquiries or distribution, <br> call us at 040-0000000 or <br> shoot a mail to info@rockstarjeans.com</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"><!--

--></script>

</body></html>