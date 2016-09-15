<div class="hometab container">
	<div class="module_title">Trending Products</div>
	<div id="tabs" class="htabs">
		<ul id = "myTab" class = "nav nav-tabs etabs">
		<?php $ic = 0; foreach ($modules as $module) { ?>
			<li class = "<?php if($ic==0)echo 'active';?>"> <a href = "#tab-<?php echo $module['name'];?>" data-toggle = "tab"> <?php echo $module['name'];?> </a></li>
		<?php $ic++; } ?>
		</ul>
	</div>
	<div id="myTabContent" class="tab-content">

		<?php $ic = 0; foreach ($modules as $module) { ?>
			<div class = "tab-pane fade <?php if($ic==0)echo 'in active';?>" id = "tab-<?php echo $module['name'];?>">
				<?php echo $module['code']; ?>
			</div>
		<?php $ic++; } ?>
		
	</div>
</div>