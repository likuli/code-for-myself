<?php
/**
 * func: 创建一封待发送的邮件
 * @param Array $data = array()
 * @return Array $re 
 */
function create_mail( $data = array() ){
	$re   = array();
	$info = null;

	//需要验证的字段
	$arr  = array(
		'to'	  => '邮件接收地址',
		'title'	  => '邮件标题',
		'content' => '邮件内容',
		'class'   => '相关类名',
		'func'	  => '相关函数名',
		'table'	  => '相关表名',
		'tid'	  => '邮件所属单子的ID'
	);
	if( empty($data) ){
		$info   = "Parameter cannot be empty!";
	}else{
		foreach ($arr as $key => $value) {
			if( empty($data[$key]) ) {
				$info = "Error:'${key}' cannot be empty!";
				break;
			}
		}
	}

	if( empty($info) ){
		$data['from']   = 'ops@jd.com';
		$data['fname']  = '运维管理平台';
		$data['status'] = '0';
		$data['ctime']  = time();

		load('@.LztCommon');
		$data = array_map("array_map_trim",$data);

		$L = M('Mail');
		$r = $L->add( $data );
		if( $r ){
			$code = 1;
			$info = 'The mail was added successfully!';
		}else{
			$code = 0;
			$info = 'Failed to add a message!';
		}
	}else{
		$code = 0;
		$info = $info;
	}
	
	$re['code'] = $code;
	$re['info'] = $info;
	return $re;
}

//发送邮件
function do_send_mail( $data ){
	Vendor('PHPMailer.PHPMailerAutoload');
	$mail = new PHPMailer(); 

	$mail->IsSMTP();
	$mail->Host     = "127.0.0.1";
	$mail->SMTPAuth = true;
	$mail->CharSet  = "UTF-8";
	$mail->Username = "";
	$mail->Password = "";
	$mail->From     = "";
	$mail->FromName = "管理平台";

	foreach($data['to'] as $key => $value){
		$mail->AddAddress($value,$value);
	}
	if( $data['cc'] ){
		foreach($data['cc'] as $key => $value){
			$mail->AddCC($value,$value);
		}
	}

	$mail->Subject  = $data['title'];
	$mail->Body     = $data['content'];
	$mail->WordWrap = 80; 

	$re = $mail->Send();

	if( $re ){
		echo "Mail success!";
	}else{
	    echo "Mailer Error: " . $mail->ErrorInfo;
	}
	return $re;
}
