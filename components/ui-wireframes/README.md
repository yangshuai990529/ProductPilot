# 组件 - TV/移动端/Web 界面线框原型 (UI Wireframes)

本组件用于定义智能电视大屏十英尺界面、移动端和 Web 端的线框草图，保证跨应用（Office, Figma）的可编辑性。

## 1. TV 大屏 1080p 线框图 HTML/CSS 原型模板

由于电视端没有指针点击，原型必须使用标准的 CSS `:focus` 伪类或特定的类（如 `.focused`）来高亮当前的选中卡片。以下为可在浏览器中直接本地打开测试的可编辑 TV 页面原型组件代码：

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TV Launcher 示意原型</title>
  <style>
    /* CSS 变量继承设计系统配色 */
    :root {
      --bg-color: #0C0F14;
      --text-color: #ECEFF2;
      --primary-color: #2F65FF;
      --card-bg: #1C2026;
    }
    
    body {
      margin: 0;
      padding: 0;
      width: 1920px;
      height: 1080px;
      background-color: var(--bg-color);
      color: var(--text-color);
      font-family: "PingFang SC", "Microsoft YaHei", sans-serif;
      overflow: hidden;
      box-sizing: border-box;
      padding: 80px 120px; /* 大屏安全页边距 */
    }

    h1 {
      font-size: 40px;
      font-weight: 700;
      margin-bottom: 8px;
    }

    p.subtitle {
      font-size: 24px;
      color: #9AA5B1;
      margin-bottom: 40px;
    }

    /* 横向导航菜单 */
    .nav-bar {
      display: flex;
      gap: 24px;
      margin-bottom: 60px;
    }

    .nav-item {
      font-size: 24px;
      padding: 12px 24px;
      background-color: var(--card-bg);
      border-radius: 8px;
      border: 2px solid transparent;
      cursor: pointer;
    }

    /* 获得焦点状态 */
    .nav-item.focused, .nav-item:focus {
      outline: none;
      transform: scale(1.05);
      border-color: var(--primary-color);
      box-shadow: 0 0 15px rgba(47, 101, 255, 0.4);
    }

    /* 推荐内容卡片网格 */
    .grid-container {
      display: flex;
      gap: 32px;
    }

    .card {
      width: 400px;
      height: 225px;
      background-color: var(--card-bg);
      border-radius: 12px;
      padding: 24px;
      box-sizing: border-box;
      border: 3px solid transparent;
      transition: all 0.2s cubic-bezier(0.25, 1, 0.5, 1);
    }

    .card.focused, .card:focus {
      outline: none;
      transform: scale(1.08); /* 电视焦点放大 1.08 */
      border-color: var(--primary-color);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5), 0 0 15px rgba(47, 101, 255, 0.5);
    }

    .card h3 {
      font-size: 28px;
      margin-top: 0;
    }

    .card p {
      font-size: 18px;
      color: #9AA5B1;
    }

    /* Toast 状态提示组件 */
    .toast {
      position: absolute;
      bottom: 80px;
      left: 50%;
      transform: translateX(-50%);
      background-color: rgba(28, 32, 38, 0.95);
      border: 1px solid var(--primary-color);
      padding: 16px 32px;
      border-radius: 30px;
      font-size: 20px;
      display: none;
    }
  </style>
</head>
<body>
  <h1>智能电视大屏主页 (Launcher)</h1>
  <p class="subtitle">示意线框原型，按 Tab 键模拟遥控器焦点切换测试。</p>

  <div class="nav-bar">
    <div class="nav-item focused" tabindex="1">精选推荐</div>
    <div class="nav-item" tabindex="2">画质专区</div>
    <div class="nav-item" tabindex="3">网络设置</div>
  </div>

  <div class="grid-container">
    <div class="card" tabindex="4">
      <h3>画质调校模式</h3>
      <p>Delta E < 1.5 极色温测试样本卡片</p>
    </div>
    <div class="card" tabindex="5">
      <h3>5GHz DFS 避让机制</h3>
      <p>中国 SRRC 避让避让信道切换逻辑</p>
    </div>
    <div class="card" tabindex="6">
      <h3>AI Agent 评审引擎</h3>
      <p>自动识别 Blocker 缺陷</p>
    </div>
  </div>

  <div class="toast" id="exit-toast">再次按返回键将退出应用</div>
</body>
</html>
```

## 2. 设计与演示原则
* **在 PPTX 中画线框图**：必须使用 Office 原生的“矩形”、“文本框”、“圆角矩形”来拼装原型。严禁直接截图并粘贴。
* **高对比度**：焦点框的 Border 粗细不能小于 3 px，颜色选择高对比度的 Primary 蓝，确保用户能一眼认清焦点所在。
* **大字号**：大屏页面上的字体字号绝不小于 18 px。
