window.onload=function() {
    var slider1=document.getElementById("slider1");
    var slider1Btn=document.getElementById("slider1Btn");
    var serverImg=document.getElementById("serverImg");

    //服务变色轮播
    function serverImg_carouselTask() {
        var img = serverImg.querySelector(".griddy-act");
        img.classList.remove("griddy-act");
        var imgnext = img.nextElementSibling;
        if (imgnext != null) {
            //显示哪张图
            imgnext.classList.add("griddy-act");
        } else if(img.parentNode === serverImg.children[0]){
            serverImg.children[1].children[0].classList.add("griddy-act");
        }else if(img.parentNode === serverImg.children[1]){
            serverImg.children[2].children[0].classList.add("griddy-act");
        }else if(img.parentNode === serverImg.children[2]){
            serverImg.children[0].children[0].classList.add("griddy-act");
        }
    }
    setInterval(serverImg_carouselTask, 3000);


    // 不同通讯器类型产品轮播
    function slider1_carouselTask() {
        var img = slider1.querySelector(".show");
        var slider1On=slider1Btn.querySelector(".on");
        img.classList.remove("show");
        slider1On.classList.remove("on");
        var imgnext = img.nextElementSibling;
        if (imgnext != null) {
            //显示哪张图
            imgnext.classList.add("show");
            //圆点跟随
            slider1On.nextElementSibling.classList.add("on");
        } else {
            slider1.children[0].classList.add("show");
            slider1Btn.children[0].classList.add("on");
        }
    }
    var timeSlider1=setInterval(slider1_carouselTask, 3000);

    //点击图样跳转图片
    slider1Btn.onclick=function(e) {
        if(e.target.nodeName === "SPAN") {
            var img = slider1.querySelector(".show");
            var slider1On=slider1Btn.querySelector(".on");
            var btn=e.target;
            img.classList.remove("show");
            slider1On.classList.remove("on");
            //
            btn.classList.add("on");
            //显示圆点的图片
            if(btn === slider1Btn.children[0]){
                slider1.children[0].classList.add("show");
            }
            if(btn === slider1Btn.children[1]){
                slider1.children[1].classList.add("show");
            }
            if(btn === slider1Btn.children[2]){
                slider1.children[2].classList.add("show");
            }
            // clearInterval(timeSlider1);
            // setTimeout(slider1_carouselTask, 3000);
            timeSlider1();
        }
    };

}