# AI 漫剧工作台（本地版）

版本：2.0.0-dev.9

## 安装

下载以下两个压缩包，并解压到同一个位置：

1. Web 程序包
2. ComfyUI Core 运行环境包

将两个包解压到同一个程序文件夹，双击其中的 `启动AI漫剧工作台.bat` 即可。

Web 包已经包含本地 Qwen 和 FFmpeg；ComfyUI Core 包包含独立 Python、ComfyUI 和当前验证过的自定义节点。

## 模型

两个程序包不包含 H3、Qwen-Image、VAE、CLIP 等 ComfyUI 模型。请把模型按类型放进：

`程序目录\ComfyUI\ComfyUI\models\对应目录`

例如：

- H3 主模型：`models\diffusion_models`
- 文本编码器：`models\text_encoders`
- VAE：`models\vae`
- LoRA：`models\loras`

## 数据

用户项目、上传图片、生成图片、视频和日志会分别保存在 `projects`、`assets`、`outputs`、`logs`。升级前请备份这些目录。

当前是开发测试版，未附带正式开源许可证；可先作为网盘测试包分发。
