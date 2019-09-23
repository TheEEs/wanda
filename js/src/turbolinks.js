import TurboLinks from "turbolinks";
import axios from "axios";
TurboLinks.start();

document.addEventListener("turbolinks:load",function(){
    var postForms = document.querySelectorAll("form[method='post']");
    for(var element of postForms){
        element.addEventListener("submit",function(e){
            e.preventDefault();
            var formData = new FormData(element); 
            axios({
                url: element.action,
                method: "post",
                data: formData,
                config: {
                    headers:{
                        "Content-Type" : element.enctype
                    }
                }
            }).then(function(data){
                TurboLinks.visit(data.data);
            })
        })
    }
    var destroyLinks = document.querySelectorAll("a[data-method=delete]");
    for (var link of destroyLinks){
        link.addEventListener("click",function(e){
            e.preventDefault();
            const meta_csrf = document.querySelector("meta[name=_csrf]");
            const _csrf = meta_csrf.attributes['value'].value;
            console.log(_csrf);
            var href = link.href;
            axios.delete(href,{
                headers:{
                    "X_CSRF_TOKEN": _csrf
                }
            }).then(function(data){
                TurboLinks.visit(data.data);
            })
        })
    }
})