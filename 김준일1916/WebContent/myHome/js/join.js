const join_text = document.querySelectorAll(".join_text");
const join_warning = document.querySelectorAll(".join_warning");

for(let i = 0; i < join_text.length - 1; i++){
    join_text[i].onblur = () => {
	alert("test");
        if(join_text[i].value.length == 0){
            join_warning[i].style.display = "block";
        }else { 
            join_warning[i].style.display = "none";
        }
    }
}

const join_id = document.querySelector("#id_text");
join_id.onblur = () => {
	alert("test");
}