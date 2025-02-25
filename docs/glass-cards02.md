---
icon: /octicons/link-24
comment: True
glightbox: False
nostatistics: true
comments: false
---

# 友链
    My friends!

<style>
body {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: #161616;
}

.container {
    position: relative;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 30px;
    padding: 60px 20px;
    margin: 2rem auto;
    max-width: 1200px;
    perspective: 1000px;
}

.card {
    position: relative;
    width: 220px;
    height: 280px;
    margin: 0 -15px;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    border-radius: 20px;
    padding: 35px 20px 25px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: center;
    text-align: center;
    text-decoration: none;
    color: white;
    border: 1px solid rgba(255, 255, 255, 0.2);
    transition: all 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
    transform-style: preserve-3d;
    backface-visibility: hidden;
    transform-origin: center center;
    will-change: transform, opacity;
}

.card:nth-child(1) {
    background: linear-gradient(135deg, rgba(255, 89, 89, 0.35), rgba(240, 50, 90, 0.35));
    border-color: rgba(255, 89, 89, 0.5);
    box-shadow: 0 4px 20px rgba(255, 89, 89, 0.2);
    transform: translate3d(0, 40px, 0) rotate3d(0, 0, 1, -8deg);
}

.card:nth-child(2) {
    background: linear-gradient(135deg, rgba(89, 139, 255, 0.35), rgba(89, 89, 255, 0.35));
    border-color: rgba(89, 139, 255, 0.5);
    box-shadow: 0 4px 20px rgba(89, 139, 255, 0.2);
    transform: translate3d(0, 15px, 0) rotate3d(0, 0, 1, -3deg);
}

.card:nth-child(3) {
    background: linear-gradient(135deg, rgba(89, 255, 150, 0.35), rgba(89, 255, 89, 0.35));
    border-color: rgba(89, 255, 150, 0.5);
    box-shadow: 0 4px 20px rgba(89, 255, 150, 0.2);
    transform: translate3d(0, 15px, 0) rotate3d(0, 0, 1, 3deg);
}

.card:nth-child(4) {
    background: linear-gradient(135deg, rgba(255, 189, 89, 0.35), rgba(255, 150, 89, 0.35));
    border-color: rgba(255, 189, 89, 0.5);
    box-shadow: 0 4px 20px rgba(255, 189, 89, 0.2);
    transform: translate3d(0, 40px, 0) rotate3d(0, 0, 1, 8deg);
}

.container:hover .card {
    transform: translate3d(0, 0, 0) rotate3d(0, 0, 1, 0);
    opacity: 0.85;
}

.card:hover {
    transform: translate3d(0, -15px, 30px) rotate3d(0, 0, 1, 0) !important;
    opacity: 1 !important;
    z-index: 10;
}

.card-image {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    object-fit: cover;
    border: 2px solid rgba(255, 255, 255, 0.2);
    padding: 4px;
    margin-bottom: 25px;
    background: rgba(255, 255, 255, 0.05);
    transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
}

.card:hover .card-image {
    transform: scale(1.1);
    border-color: rgba(255, 255, 255, 0.4);
}

.content-wrapper {
    margin-top: auto;
    padding-bottom: 10px;
}

.card h3 {
    margin: 0 0 5px 0;
    font-size: 1.4rem;
    color: white;
}

.card p {
    margin: 0;
    font-size: 0.95rem;
    opacity: 0.8;
    line-height: 1.4;
    color: white;
}

[data-md-color-scheme="default"] .card {
    color: white !important;
}
</style>

<div class="container">
    <a href="https://example.com/link1" class="card" target="_blank">
        <img src="https://picsum.photos/100" alt="卡片图片1" class="card-image">
        <div class="content-wrapper">
            <h3>卡片标题 1</h3>
            <p>卡片描述内容 1</p>
        </div>
    </a>
</div>

<div class="container">
    <a href="https://example.com/link2" class="card" target="_blank">
        <img src="https://picsum.photos/101" alt="卡片图片2" class="card-image">
        <div class="content-wrapper">
            <h3>卡片标题 2</h3>
            <p>卡片描述内容 2</p>
        </div>
    </a>
</div>

<div class="container">
    <a href="https://example.com/link3" class="card" target="_blank">
        <img src="https://picsum.photos/102" alt="卡片图片3" class="card-image">
        <div class="content-wrapper">
            <h3>卡片标题 3</h3>
            <p>卡片描述内容 3</p>
        </div>
    </a>
</div>

<div class="container">
    <a href="https://example.com/link4" class="card" target="_blank">
        <img src="https://picsum.photos/103" alt="卡片图片4" class="card-image">
        <div class="content-wrapper">
            <h3>卡片标题 4</h3>
            <p>卡片描述内容 4</p>
        </div>
    </a>
</div>


</div>
