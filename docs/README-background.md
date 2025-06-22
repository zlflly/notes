# 主页背景效果说明

## 概述

这个背景效果是一个基于WebGL的3D万花筒着色器，为个人主页添加了动态的视觉效果。

## 文件结构

```
docs/
├── assets/
│   ├── background-vert.glsl    # 顶点着色器
│   └── background-frag.glsl    # 片段着色器（主要效果）
├── js/
│   └── background.js           # p5.js 实现脚本
├── css/
│   └── custom.css              # 包含背景相关样式
└── index.md                    # 主页文件
```

## 技术实现

### 着色器文件
- **background-vert.glsl**: 简单的顶点着色器，处理几何体变换
- **background-frag.glsl**: 复杂的片段着色器，实现3D万花筒效果

### JavaScript实现
- 使用p5.js库进行WebGL渲染
- 支持高分辨率和视网膜显示
- 响应式设计，自动适应窗口大小变化

### 样式设计
- 背景画布固定在页面底部（z-index: -1）
- 主页内容使用毛玻璃效果（backdrop-filter: blur）
- 响应式设计，适配移动设备

## 效果特点

1. **3D万花筒**: 使用迭代函数系统创建复杂的几何图案
2. **动态色彩**: 基于时间的色彩变化
3. **性能优化**: 支持高分辨率显示，性能良好
4. **响应式**: 自动适应不同屏幕尺寸

## 原作者

这个着色器效果基于 Matthias Hurrle (@atzedent) 的创意编码作品，用于OpenProcessing的每周创意编码挑战。

## 浏览器兼容性

- 支持WebGL2的现代浏览器
- 需要支持ES6+的JavaScript环境
- 建议使用Chrome、Firefox、Safari等主流浏览器

## 自定义

可以通过修改以下文件来自定义效果：

1. **background-frag.glsl**: 修改着色器代码来改变视觉效果
2. **background.js**: 调整p5.js参数
3. **custom.css**: 修改样式和布局 