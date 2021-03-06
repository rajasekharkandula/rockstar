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
				<li><a href="<?php echo $base;?>index.php?route=common/aboutus">ABOUT US</a></li>
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
<div class="fsvs">
	<div id="fsvs">
		<?php $i=0; foreach ($banners as $banner) { ?>
		<div class="slide">
			<?php if($banner['type'] == "IMAGE"){ ?> 
				<?php if ($banner['link']) { ?>
				<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="full-img" /></a>
				<?php } else { ?>
				<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="full-img" />
				<?php } ?> 
			<?php }else{?>
				
				<?php if($i%2 == 1){ ?>	
				<div class="h-slide"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></div>	
				<?php } ?>
				<div class="h-slide">
					<div class="text">
						<h1>COACH COOL</h1>
						<p> STAYING ON THE SIDELINES DOESNT MEAN YOU CANT LOOK LIKE A STAR </p>
						<button class="btn"> SHOP NOW</button>
					</div>
				</div>
				<?php if($i%2 == 0){ ?>	
				<div class="h-slide"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></div>
				<?php } ?>
			<?php $i++; } ?>
		</div>
		<?php } ?>
	</div>
</div>


<script type="text/javascript">

jQuery(document).ready(function($){
   var slider = $.fn.fsvs({
		autoPlay            : false,
		speed               : 1000,
		bodyID              : 'fsvs',
		mouseSwipeDisance   : 40,
		afterSlide          : function(){},
		beforeSlide         : function(){},
		endSlide            : function(){},
		mouseWheelEvents    : true,
		mouseWheelDelay     : false,
		mouseDragEvents     : true,
		touchEvents         : true,
		arrowKeyEvents      : true,
		pagination          : true,
		nthClasses          : 2,
		detectHash          : false
	});
});
</script>

</body></html>