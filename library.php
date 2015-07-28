<?php

//
$list = array_reduce($list, create_function('$v,$w', '$v[$w["id"]]=$w["name"];return $v;'));


//$arr 二维数组；$tmp 一维数组
array_walk($arr, 'array_walk_merge',$tmp);
function array_walk_merge(&$v,$k,$c){
	$v = array_merge($v,$c);
}

