---
hide:
    - date
    - navigation
    - toc
home: true
nostatistics: true
comments: false
icon: material/home
---

<!-- ezlinks: disable -->

<!-- 背景效果样式 -->
<style>
body {
    margin: 0;
    padding: 0;
    overflow-x: hidden;
}

#background-canvas {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    object-fit: cover;
}

/* 确保内容在背景之上 */
.md-content {
    position: relative;
    z-index: 1;
}

/* 主页内容样式调整 */
.home-content {
    position: relative;
    z-index: 2;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    border-radius: 15px;
    padding: 2rem;
    margin: 2rem auto;
    max-width: 800px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.2);
}

.home-title {
    color: #fff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.home-links {
    color: #fff;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
}

.home-links a {
    color: #fff;
    text-decoration: none;
    transition: all 0.3s ease;
    padding: 0.5rem 1rem;
    border-radius: 8px;
    background: rgba(255, 255, 255, 0.1);
    margin: 0 0.5rem;
    display: inline-block;
}

.home-links a:hover {
    background: rgba(255, 255, 255, 0.2);
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
}
</style>

<!-- p5.js 库 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/p5.js"></script>

<!-- 背景效果脚本 -->
<script src="js/background.js"></script>

<div class="home-page">
    <div class="home-content">
        <h1 class="home-title" style="text-align: center;">
            <span style="font-size:50px;">
                Welcome to zl's house!
            </span>
        </h1>

        <div class="home-links" style="display: block; text-align: center; font-size: 18px;">
            [:octicons-link-16: My friends!](./glass-cards.html)/
            [:octicons-info-16: About Me](./about.md)
        </div>
    </div>
</div>

<!-- 原有的统计功能代码（已注释） -->
<!-- <div id="statistics" markdown="1" class="card" style="width: 27em; border-color: transparent; opacity: 0; margin-left: auto; margin-right: 0; font-size: 110%">
<div style="padding-left: 1em;" markdown="1">
页面总数：{{ pages }}  
总字数：{{ words }}  
代码块行数：{{ codes }}  
网站运行时间：<span id="web-time"></span>  
<span id="busuanzi_container_site_uv">访客总人数：<span id="busuanzi_value_site_uv"></span>人  
<span id="busuanzi_container_site_pv">总访问次数：<span id="busuanzi_value_site_pv"></span>次
</div>
</div>

<script>
function updateTime() {
    var date = new Date();
    var now = date.getTime();
    var startDate = new Date("2024/08/01 09:10:00");
    var start = startDate.getTime();
    var diff = now - start;
    var y, d, h, m;
    y = Math.floor(diff / (365 * 24 * 3600 * 1000));
    diff -= y * 365 * 24 * 3600 * 1000;
    d = Math.floor(diff / (24 * 3600 * 1000));
    h = Math.floor(diff / (3600 * 1000) % 24);
    m = Math.floor(diff / (60 * 1000) % 60);
    if (y == 0) {
        document.getElementById("web-time").innerHTML = d + "<span class=\"heti-spacing\"> </span>天<span class=\"heti-spacing\"> </span>" + h + "<span class=\"heti-spacing\"> </span>小时<span class=\"heti-spacing\"> </span>" + m + "<span class=\"heti-spacing\"> </span>分钟";
    } else {
        document.getElementById("web-time").innerHTML = y + "<span class=\"heti-spacing\"> </span>年<span class=\"heti-spacing\"> </span>" + d + "<span class=\"heti-spacing\"> </span>天<span class=\"heti-spacing\"> </span>" + h + "<span class=\"heti-spacing\"> </span>小时<span class=\"heti-spacing\"> </span>" + m + "<span class=\"heti-spacing\"> </span>分钟";
    }
    setTimeout(updateTime, 1000 * 60);
}
updateTime();
function toggle_statistics() {
    var statistics = document.getElementById("statistics");
    if (statistics.style.opacity == 0) {
        statistics.style.opacity = 1;
    } else {
        statistics.style.opacity = 0;
    }
}
</script> -->