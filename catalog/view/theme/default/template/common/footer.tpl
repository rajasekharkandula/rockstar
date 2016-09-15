<footer>
  <div class="container">
    <div class="row">
      
      <div class="col-sm-4">
       <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $base; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
		<p>RockStar jeans is a website you can find a different varieties of clothing all at one place. RockStar jeans is a website you can find a different varieties of clothing all at one place. </p>
		<div class="payment-icons"> 
			<img class="visa" src="<?php echo $base; ?>image/catalog/demo/footer/visa.png">
			<img src="<?php echo $base; ?>image/catalog/demo/footer/mastercard.jpg">
			<img src="<?php echo $base; ?>image/catalog/demo/footer/maestro.jpg">
			<img src="<?php echo $base; ?>image/catalog/demo/footer/americanexpress.png">
		</div>
      </div>
     <div class="col-sm-2">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-2">
        <?php if ($informations) { ?>
		<h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
		 <?php } ?>
      </div>
      <div class="col-sm-2">
       <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
	  <div class="col-sm-2">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      
    </div>
  </div>
</footer>
<section class="bg-dark-grey">
<div class="container">
	<div class="row">
		<div class="col-md-6">
		  <p class="powered-by mt-10"><?php echo $powered; ?></p>
		</div>
	</div>
</div>
</section>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>