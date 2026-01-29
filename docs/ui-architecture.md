# UI 架构文档

## 框架与形态
- 框架建议：VitePress（轻量、Markdown 驱动）或 Docusaurus（React 生态、易扩展）
- 首版形态：静态站点（单页/多页），以 Markdown 内容为主体，图表以 assets 图片呈现
- 迭代方向：引入前端图表库（ECharts/Chart.js）与轻量 API，支持交互与数据拉取

## 技术栈（前端）
| 类别 | 技术 | 版本 | 用途 | 理由 |
|------|------|------|------|------|
| 站点生成 | VitePress 或 Docusaurus | 最新 | 文档与站点 | 与 Markdown 适配、生态成熟 |
| 样式 | 默认主题 + 简洁样式 | - | 一致性与易读性 | 降低设计成本 |
| 图表 | 静态图片（首版） | - | 图表展示 | 先快后全，逐步增强 |
| 交互图表（可选） | ECharts/Chart.js | 最新 | 交互可视化 | 常用类型支持丰富 |

## 项目结构（建议）
```
docs/                 # 架构与规范文档
stories/              # 拆分的用户故事
assets/               # 图表与图片（统一命名）
readme.md             # 展示首页（内容骨架）
prd.md                # 产品需求文档（含索引）
```

## 页面与组件
- 首页/概览：电梯词、亮点、KPI 总览
- 项目卡片：统一结构（场景、方法、架构、KPI、图表、链接）
- 图表模块：混淆矩阵、ROC/PR、延迟-吞吐、成本-性能热力图、漂移监控、解释图
- 资源区块：仓库/Notebook、配置与版本、数据样例

## 命名规范
- 组件/模块：PascalCase（如 ProjectCard、KpiSummary、ChartPanel）
- 资产命名：project-key_chart-type_variant.png（下文定义）
- 文档命名：主题清晰、语义明确（ui-architecture.md、architecture.md）

## 图表命名约定
- 搜索产研 top1：search-top1_roc-pr.png、search-top1_confusion.png、search-top1_latency-throughput.png、search-top1_cost-performance.png
- 通宝客户端：tongbao_version-compare.png、tongbao_cost-performance.png
- 通用：drift-monitoring.png、search-top1_shap-summary.png、search-top1_gradcam.png

## 数据与口径呈现
- KPI 卡片：性能/效率/成本/稳定性四类指标，标注采样窗口与阈值策略
- 版本对比：不同模型/参数/日期的对比视图与结论摘要
- 样例与解释：成功/失败/边界样例，叠加解释图层（SHAP/Grad-CAM）

## 迭代计划（UI）
- V1：静态内容与图片图表，完成两项目与 KPI 总览
- V2：引入交互图表与筛选联动（版本/日期/场景标签）
- V3：接入轻量 API，指标与图表按需拉取

