# 毛玻璃效果卡片

一个具有彩虹渐变色和毛玻璃效果的卡片组件，包含悬停动画和发光效果。

## HTML 结构

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>毛玻璃效果卡片</title>
    <link rel="stylesheet" href="glass-cards.css">
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
        <!-- 重复类似的卡片结构 -->
    </div>
</body>
</html>
```

## CSS 样式

```css
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
}

.card {
    position: relative;
    width: 220px;
    height: 280px;
    margin: 0 -15px;
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
    transition: transform 0.4s cubic-bezier(0.23, 1, 0.32, 1);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

/* 卡片渐变色样式 */
.card:nth-child(1) {
    background: linear-gradient(135deg, rgba(255, 89, 89, 0.35), rgba(240, 50, 90, 0.35));
    border-color: rgba(255, 89, 89, 0.5);
    box-shadow: 0 4px 20px rgba(255, 89, 89, 0.2);
    transform: translateY(40px) rotate(-8deg);
}

/* 其他卡片样式类似 */

/* 悬停效果 */
.card:hover {
    transform: translateY(-10px) rotate(0) !important;
    opacity: 1 !important;
    background: rgba(255, 255, 255, 0.25);
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
}

/* 图片样式 */
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
```

## 特性说明

1. **毛玻璃效果**
   - 使用 `backdrop-filter: blur()` 实现
   - 半透明背景增强效果

2. **彩虹渐变**
   - 每张卡片独特的渐变色背景
   - 悬停时颜色加深

3. **动画效果**
   - 卡片旋转和位移动画
   - 图片缩放效果
   - 平滑的过渡动画

4. **发光效果**
   - 彩色阴影
   - 悬停时阴影加深

5. **响应式布局**
   - 弹性布局
   - 最大宽度限制
   - 溢出隐藏处理
