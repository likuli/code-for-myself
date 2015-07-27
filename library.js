//数字转字母
function num2letter(n){
	return String.fromCharCode(64 + parseInt(n));
}



/**
 * @desc 只能输入数字
 * @usage $(document).on('keyup','input.count',onlyNum);
 */
function onlyNum(){
	var reg = /^[0-9]*$/g;
	if(!(reg.test($(this).val()))){
		$(this).val('');
	}
}

//将表单序列化为JSON
function serializeJson(form){
    var serializeObj={};
    var arr = form.serializeArray();
    $( arr ).each(function(){
        if(serializeObj[this.name]){
            if($.isArray(serializeObj[this.name])){
                serializeObj[this.name].push(this.value);
            }else{
                serializeObj[this.name]=[serializeObj[this.name],this.value];
            }
        }else{
            serializeObj[this.name]=this.value;
        }
    });
    return serializeObj;
}

//radio、checkbox设值 例：将name='age',value=20设置为checked
$("input[name='age'").eq('20').attr("checked","checked");







