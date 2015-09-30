<?php
namespace app\assets;

use yii\web\AssetBundle;

class AppAsset extends AssetBundle
{
	public $sourcePath = '@app/files';

	public $css = [
		'less/application.less',
	];

	public $js = [
	];

	public $depends = [
		'yii\web\JqueryAsset',
		'app\assets\BootstrapAsset'
	];
}
