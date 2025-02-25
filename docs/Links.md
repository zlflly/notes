---
icon: /octicons/link-24
comment: True
glightbox: False
nostatistics: true
comments: false
---

# 友链

!!! abstract
    My friends!

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>毛玻璃效果卡片</title>
    <link rel="stylesheet" href=
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
    gap: 0;
    padding: 80px 40px;
    width: 100%;
    max-width: 1200px;
    overflow: hidden;
    isolation: isolate;
    perspective: none;
}

.card {
    position: relative;
    width: 220px;
    height: 280px;
    aspect-ratio: auto;
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
    transition: transform 0.4s cubic-bezier(0.23, 1, 0.32, 1);
    z-index: auto;
    will-change: transform;
    transform-origin: center center;
    transform-style: flat;
    backface-visibility: hidden;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

.card:before {
    display: none;
}

.card:nth-child(1) {
    background: linear-gradient(135deg, rgba(255, 89, 89, 0.35), rgba(240, 50, 90, 0.35));
    border-color: rgba(255, 89, 89, 0.5);
    box-shadow: 0 4px 20px rgba(255, 89, 89, 0.2);
    transform: translateY(40px) rotate(-8deg);
}

.card:nth-child(2) {
    background: linear-gradient(135deg, rgba(89, 139, 255, 0.35), rgba(89, 89, 255, 0.35));
    border-color: rgba(89, 139, 255, 0.5);
    box-shadow: 0 4px 20px rgba(89, 139, 255, 0.2);
    transform: translateY(15px) rotate(-3deg);
}

.card:nth-child(3) {
    background: linear-gradient(135deg, rgba(89, 255, 150, 0.35), rgba(89, 255, 89, 0.35));
    border-color: rgba(89, 255, 150, 0.5);
    box-shadow: 0 4px 20px rgba(89, 255, 150, 0.2);
    transform: translateY(15px) rotate(3deg);
}

.card:nth-child(4) {
    background: linear-gradient(135deg, rgba(255, 189, 89, 0.35), rgba(255, 150, 89, 0.35));
    border-color: rgba(255, 189, 89, 0.5);
    box-shadow: 0 4px 20px rgba(255, 189, 89, 0.2);
    transform: translateY(40px) rotate(8deg);
}

.container:hover .card {
    transform: translateY(0) rotate(0);
    opacity: 0.8;
}

.card:hover {
    transform: translateY(-10px) rotate(0) !important;
    opacity: 1 !important;
    background: rgba(255, 255, 255, 0.25);
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
}

.card:hover .card-image {
    transform: scale(1.1);
    border-color: rgba(255, 255, 255, 0.4);
}

.card:nth-child(1):hover {
    background: linear-gradient(135deg, rgba(255, 89, 89, 0.45), rgba(240, 50, 90, 0.45));
    box-shadow: 0 8px 32px rgba(255, 89, 89, 0.3);
}

.card:nth-child(2):hover {
    background: linear-gradient(135deg, rgba(89, 139, 255, 0.45), rgba(89, 89, 255, 0.45));
    box-shadow: 0 8px 32px rgba(89, 139, 255, 0.3);
}

.card:nth-child(3):hover {
    background: linear-gradient(135deg, rgba(89, 255, 150, 0.45), rgba(89, 255, 89, 0.45));
    box-shadow: 0 8px 32px rgba(89, 255, 150, 0.3);
}

.card:nth-child(4):hover {
    background: linear-gradient(135deg, rgba(255, 189, 89, 0.45), rgba(255, 150, 89, 0.45));
    box-shadow: 0 8px 32px rgba(255, 189, 89, 0.3);
}

.card h3 {
    margin: 0 0 5px 0;
    font-size: 1.4rem;
}

.card p {
    margin: 0;
    font-size: 0.95rem;
    opacity: 0.8;
    line-height: 1.4;
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
    transition: transform 0.3s ease, border-color 0.3s ease;
}

.content-wrapper {
    margin-top: auto;
    padding-bottom: 10px;
}>
</head>
<body>
    <div class="container">
        <a href="https://example.com/link1" target="_blank" class="card">
            <img src="https://picsum.photos/100" alt="卡片图片1" class="card-image">
            <div class="content-wrapper">
                <h3>卡片标题 1</h3>
                <p>卡片描述内容 1</p>
            </div>
        </a>
        <a href="https://example.com/link2" target="_blank" class="card">
            <img src="https://picsum.photos/101" alt="卡片图片2" class="card-image">
            <div class="content-wrapper">
                <h3>卡片标题 2</h3>
                <p>卡片描述内容 2</p>
            </div>
        </a>
        <a href="https://example.com/link3" target="_blank" class="card">
            <img src="https://picsum.photos/102" alt="卡片图片3" class="card-image">
            <div class="content-wrapper">
                <h3>卡片标题 3</h3>
                <p>卡片描述内容 3</p>
            </div>
        </a>
        <a href="https://example.com/link4" target="_blank" class="card">
            <img src="https://picsum.photos/103" alt="卡片图片4" class="card-image">
            <div class="content-wrapper">
                <h3>卡片标题 4</h3>
                <p>卡片描述内容 4</p>
            </div>
        </a>
    </div>
</body>
</html>