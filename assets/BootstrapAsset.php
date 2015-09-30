<?php
namespace app\assets;

use yii\web\AssetBundle;

/**
 * Asset bundle for the Twitter bootstrap css files.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class BootstrapAsset extends AssetBundle
{
	public $sourcePath = '@bower/bootstrap/dist';
	public $js = [
		"js/bootstrap.min.js",
	];
}
