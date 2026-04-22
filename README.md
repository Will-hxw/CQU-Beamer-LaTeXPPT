# 🎓 给 CQUer 的答辩PPT：LaTeX-Beamer PPT 模板

✨ 重庆大学（CQU）同学提供的 LaTeX Beamer 汇报模板，适用于各类课程答辩、毕设展示、学术报告等。

* 🎨 **主题设计**：改自 THU-Beamer，融合中英文校徽、中英标题风格、CQU 蓝色配色。
* 🧘 **极简主义**：拒绝花里胡哨的 PPT，LaTeX-PPT 专注学术/内容本身，格式规范，代替传统PPT的排版，LaTeX可使用LLM/MCP自动化解决排版问题。

## 📂 文件结构

```
├── slide.tex             # 📄 主文件（Beamer 演示文稿入口）
├── cqu.sty               # 🎨 样式文件（自定义主题）
├── ref.bib               # 📚 参考文献（BibTeX 格式）
├── build.sh              # 🔧 本地编译脚本
├── pic/                  # 🖼️ 图片资源（插图目录）
├── slide.pdf             # 📑 编译产物（由 build.sh 生成）
├── CQU-Beamer-Theme.pdf  # 📑 示例 PDF（编译后演示效果）
└── README.md             # 📘 本说明文档
```

## 🚀 编译方式

### 本地编译

```bash
bash build.sh
```

需要本地安装 **XeLaTeX**（如 MiKTeX、TeX Live）。编译完成后自动清理中间文件，仅保留 `slide.pdf`。

### 在线编译

* 🟢 **[Overleaf](https://www.overleaf.com)** — 打开 `slide.tex`，编译器选择 **XeLaTeX**
* 🔵 **[OpenAI Prism](https://prism.openai.com/)** — OpenAI 推出的在线 LaTeX 论文写作平台


## 📽️ PDF 演示

* 推荐播放器：WPS、Adobe Acrobat；
* 若需将 PDF 转换为 PPT，可使用 [PDF to PPT](https://www.pdf.to/ppt/) 等OCR/PDF转PPT工具；

## 📌 致谢

本项目改编自：

* 🌸 [THU Beamer Theme](https://github.com/tuna/THU-Beamer-Theme)
* ✍️ 相关资源来自 latexstudio 与 tuna.moe 等站点。

---

