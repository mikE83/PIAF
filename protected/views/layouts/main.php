<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/css/bootstrap.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>



		

		
</head>





<body>

<div class="container" id="page">

	<div id="header">
		<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
		<?php
		$this->widget('EBootstrapNavigation',array(
		    'items'=>array(
		        array('label'=>EBootstrap::encode(Yii::app()->name), 'url'=>array('/'), 'template' => '{brand}'),
		        array('label'=>'Home', 'url'=>array('/site/index'), 'icon' => 'home', 'iconWhite' => true),
		        array('label'=>'BIenInmueble', 'url'=>array('/site/page', 'view'=>'sidebar')),
		        array('label'=>'Contact', 'url'=>array('/site/contact')),
		        array('template' => '{divider}'),
		        array('label'=>'Base CSS', 'dropdown' => true, 'url'=>'#', 'items' => array(
		            array('label'=>'Typography', 'url'=>array('/site/page', 'view'=>'typography')),
		            array('label'=>'Buttons', 'url'=>array('/site/page', 'view'=>'buttons')),
		            array('label'=>'Labels', 'url'=>array('/site/page', 'view'=>'labels')),
		            array('label'=>'Images', 'url'=>array('/site/page', 'view'=>'images')),
		        )),
		        array('label'=>'Components', 'dropdown' => true, 'url'=>'#', 'items' => array(
		            array('label'=>'Crud Controller', 'url'=>array('/crud')),
		            array('label'=>'Navigation', 'url'=>array('/site/page', 'view'=>'navigation')),
		            array('label'=>'Alerts', 'url'=>array('/site/alert')),
		            array('label'=>'Carousel', 'url'=>array('/site/page', 'view'=>'carousel')),
		            array('label'=>'Progress Bar', 'url'=>array('/site/page', 'view'=>'progressbar')),
		            array('label'=>'Modal', 'url'=>array('/site/page', 'view'=>'modal')),
		        )),
	
		        array('align' => 'right', 'items' => array(
		            array('label'=>'Login', 'url'=>'#','linkOptions'=>array( 'onclick'=>'$("#userloginwidget").dialog("open"); return false;'), 'visible'=>Yii::app()->user->isGuest),
                   array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
		        )),
		    ),
		    'fixed' => true,
		    'responsive' => true,
		    'encodeLabel' => false,
		));
$this->widget('UserLoginWidget',array('visible'=>Yii::app()->user->isGuest)); 
		?>
		
	</div><!-- header -->

 
 
 
	
	

	
	
		<?/*php $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'Usuarios', 'url'=>array('/usuario/index')),
				array('label'=>'Nivel Usuario', 'url'=>array('/catNivelUsuario/index')),
				array('label'=>'Ubicaciones', 'url'=>array('/catSitio/index')),
				array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); */?>
		<!-- mainmenu -->
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by My Company.<br/>
		All Rights Reserved.<br/>
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
