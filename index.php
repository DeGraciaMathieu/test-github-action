<?php

var_dump($argv[1]); die;

$phpmetricsUrl = 'https://github.com/phpmetrics/PhpMetrics/releases/download/v2.7.3/phpmetrics.phar';

$phpmetricsPath = '/tmp/phpmetrics.phar';

file_put_contents($phpmetricsPath, file_get_contents($phpmetricsUrl));

chmod($phpmetricsPath, 0755);

//$directory = $argv[1] ?? '.';

$command = "php $phpmetricsPath .";

$output = shell_exec($command);

echo $output;

