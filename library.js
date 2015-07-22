//数字转字母
function num2letter(n){
	return String.fromCharCode(64 + parseInt(n));
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
