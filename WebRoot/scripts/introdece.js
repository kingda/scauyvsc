
function addLoadEvent(func){
	var oldonload=window.onload;
	if(typeof window.onload !='function')
		window.onload=func;
	else{
		window.onload=function(){
			oldonload();
			func();
		}
	}
}

function addClass(element,value){

	if(!element.className){
		element.className=value;
	}
	else{
		newClassName=element.className;
		newClassName+=" ";
		newClassName+=value;
		element.className=newClassName;
	}
}
function removeClass(element){
	if(element.className){
		element.className="";
	}
}

 if(!document.getElementsByClassName){  
        document.getElementsByClassName = function(className, element){  
            var children = (element || document).getElementsByTagName('*');  
            var elements = new Array();  
            for (var i=0; i<children.length; i++){  
                var child = children[i];  
                var classNames = child.className.split(' ');  
                for (var j=0; j<classNames.length; j++){  
                    if (classNames[j] == className){   
                        elements.push(child);  
                        break;  
                    }  
                }  
            }   
            return elements;  
        };  
    }  




function moveElement(elementID,final_x,final_y,interval){
	if(!document.getElementById) return false;
	if(!document.getElementById(elementID)) return false;
	var elem=document.getElementById(elementID);

	if(elem.movement){
	clearTimeout(elem.movement);	
	}
	if(!elem.style.left)
	elem.style.left = "0px";
	if(!elem.style.top)
	elem.style.top = "0px";
	var xpos = parseInt(elem.style.left);
	var ypos = parseInt(elem.style.top);
	 if(xpos==final_x&&ypos==final_y) return true;

	 if(xpos < final_x){
	 	var dist = Math.ceil((final_x-xpos)/10);
	 	xpos = xpos + dist;
	 }
	if(xpos > final_x){
		var dist = Math.ceil((xpos-final_x)/10);
		xpos = xpos - dist;
	}
	if(ypos < final_y){
		var dist = Math.ceil((final_y-ypos)/10);
		ypos = ypos + dist;
	}
	if(ypos > final_y){
		var dist = Math.ceil((ypos-final_y)/10);
		ypos = ypos - dist;
	}
	
	elem.style.left=xpos + "px";
	elem.style.top=ypos + "px";
	var repeat ="moveElement('"+elementID+"',"+final_x+","+final_y+","+interval+")";
	elem.movement = setTimeout(repeat,interval);
}




function introduce(){

var  introduce_content =document.getElementById('introduce-content');
var author = introduce_content.getElementsByClassName('author');
var author_english = introduce_content.getElementsByClassName('author-english');
var author_name = introduce_content.getElementsByClassName('author-name');
for(var i=0;i<author.length;i++)
  {

 author[i].num=i;

author[i].onmouseover=function(){
	
	var namestring="bg-"+(this.num+1);
	var bg=document.getElementById(namestring);

	bg.setAttribute("class","open");
var string = "author-name-"+(this.num+1);
   var bg1=document.getElementById(string);
    bg1.style.display="block";
moveElement(string,0,80,0);

};

author[i].onmouseout=function(){
	var namestring="bg-"+(this.num+1);
	var bg=document.getElementById(namestring);
	bg.setAttribute("class","bg");
var string = "author-name-"+(this.num+1);
var bg1=document.getElementById(string);
    bg1.style.display="none";
moveElement(string,0,-20,0);

};

   }
}
addLoadEvent(introduce);
