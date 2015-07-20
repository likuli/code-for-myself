<?php 

Class getDate{

	/**
	 * 说明: 当获取与'周'相关的时间时，我们规定'周日'为每周的最后一天
	 */

	/**
	 * 返回今天的起始时间戳
	 */
	public function beginToday(){
		return mktime(0,0,0,date('m'),date('d'),date('Y'));
	}

	/**
	 * 返回今天的结束时间戳
	 */
	public function endToday(){
		return mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1;
	}

	/**
	 * 返回昨天的起始时间戳
	 */
	public function beginYesterday(){
		return mktime(0,0,0,date('m'),date('d')-1,date('Y'));
	}

	/**
	 * 返回昨天的结束时间戳
	 */
	public function endYesterday(){
		return mktime(0,0,0,date('m'),date('d'),date('Y'))-1;
	}

	/**
	 * 返回本周的起始时间戳
	 */
	public function beginThisWeek(){
		return mktime(0,0,0,date('m'),date('d')-date('w')+1,date('Y'));
	}

	/**
	 * 返回本周的结束时间戳
	 */
	public function endThisWeek(){
		return mktime(23,59,59,date('m'),date('d')-date('w')+7,date('Y'));
	}

	/**
	 * 返回上周的起始时间戳
	 */
	public function beginLastWeek(){
		return mktime(0,0,0,date('m'),date('d')-date('w')+1-7,date('Y'));
	}

	/**
	 * 返回上周的结束时间戳
	 */
	public function endLastWeek(){
		return mktime(23,59,59,date('m'),date('d')-date('w')+7-7,date('Y'));;
	}

	/**
	 * 返回本月的起始时间戳
	 */
	public function beginThisMonth(){
		return mktime(0,0,0,date('m'),1,date('Y'));
	}

	/**
	 * 返回本月的结束时间戳
	 */
	public function endThisMonth(){
		return mktime(23,59,59,date('m'),date('t'),date('Y'));
	}

	/**
	 * 返回上月的起始时间戳
	 */
	public function beginLastMonth(){
		return mktime(0,0,0,date('m')-1,1,date('Y'));
	}

	/**
	 * 返回上月的结束时间戳
	 */
	public function endLastMonth(){
		return mktime(0,0,-1,date('m'),1,date('Y'));
	}

	/**
	 * 返回N天前的起始时间
	 * $n: int类型
	 */
	public function beginLastDays( $n ){
		$n = (int)$n;	
		return mktime(0,0,0,date('m'),date('d')-$n,date('Y'));
	}
}

 ?>
