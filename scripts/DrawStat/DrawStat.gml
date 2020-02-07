var returnText = argument0;
var i = 0;
if(argument1 < 1){
	i = argument1;
	while(i<1){
		returnText+=" -";
		i++;
	}
}else{
	while(i<argument1){
		returnText+=" +";
		i++;
	}
}
return returnText;