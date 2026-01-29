# 个人 AI 展示平台架构文档

## 概述
- 目标：以可视化数据与案例展示方式，系统呈现个人 AI 方法论与代表项目成果
- 形态：首版静态单页/轻量多页站点，统一度量口径，支持横向对比与复现资源链接
- 依据文档：[prd.md](file:///Users/zhangfang/Documents/AI学习/prd.md)、[readme.md](file:///Users/zhangfang/Documents/AI学习/readme.md)

## 技术概要
- 架构风格：Jamstack（静态站点 + 动态数据可选）
- 前端：静态站点生成器（VitePress 或 Docusaurus，二选一），Markdown 驱动内容
- 后端：首版不依赖后端；后续可接入轻量 API（Node/Serverless）提供指标/图表数据
- 资源：assets 目录统一存放图表与图片；stories/ 组织执行文档
- 部署：本地预览 → 托管平台（Vercel/Netlify/静态托管）

## 平台与基础设施选择
- 方案 A：Vercel + 静态站点生成器
  - 优点：部署简易、性能优、域名管理方便、预览环境完善
  - 风险：免费套餐带限额；需绑定 Git 仓库（可选）
- 方案 B：Netlify + 静态站点生成器
  - 优点：部署与 CDN 一体化、表单与函数扩展方便
  - 风险：生态偏前端，后端扩展需规划
- 方案 C：本地/企业静态托管（Nginx/对象存储）
  - 优点：完全可控、内网可用；适合私有部署
  - 风险：运维与监控需自建
- 推荐：Vercel + VitePress（轻量、与 Markdown 适配度高）；后续需要 React 生态可切至 Docusaurus

## 仓库结构
- 根目录：readme.md、prd.md、stories/、docs/、assets/
- 约定：
  - docs/：架构与规范类文档（本文件）
  - assets/：图表与图片（统一命名与路径）
  - stories/：拆分的用户故事文档（story-01..09）
  - .bmad-core/：框架与模板资源

## 高层架构图（Mermaid）
```mermaid
graph TD
  U[用户] --> W[静态站点 (VitePress/Docusaurus)]
  W -->|展示| A[assets 图表/图片]
  W -->|内容| MD[Markdown 文档 (readme/prd/stories)]
  subgraph 可选后端/服务
    API[轻量 API (Node/Serverless)] --> DS[(指标/数据源)]
    W -->|拉取数据| API
  end
  W --> CDN[CDN/缓存]
  CDN --> Host[Vercel/Netlify/静态托管]
```

## 架构模式
- Jamstack：先构建后部署，前端直出，可选后端数据拉取
- Component-based 内容组件：指标卡片、图表模块、项目卡片
- Assets 规范：统一命名与路径，支持版本对比与占位图
- 数据口径统一：性能/效率/成本/稳定性四类指标；A/B 显著性说明

## 技术栈表（首版）
| 类别 | 技术 | 版本 | 用途 | 选择理由 |
|------|------|------|------|---------|
| 静态站点 | VitePress 或 Docusaurus | 最新 | 站点生成 | 与 Markdown 兼容、生态成熟 |
| 图表渲染 | 静态图片 (assets) | - | 首版展示 | 先填充占位，后续可接入前端图表库 |
| 前端图表库（可选） | ECharts / Chart.js | 最新 | 交互图表 | 快速实现常用图表类型 |
| 部署 | Vercel/Netlify/静态托管 | - | 托管与 CDN | 部署简易、性能优 |
| 数据服务（可选） | Node/Serverless | LTS | 指标/图表数据 | 渐进式增强，后端按需 |

## 数据模型（内容与指标）
- 项目（Project）：名称、简介、场景、方法、架构、KPI、图表链接、资源链接
- KPI：类别（性能/效率/成本/稳定性）、口径说明、数值与区间、版本标注
- 资产（Asset）：类型（图表/图片/解释图）、路径、关联项目与版本
- 复现资源（Resource）：仓库/Notebook/配置、数据样例、版本信息

## API 设计（可选增强）
- GET /api/kpi?project=xxx&version=yyy：返回指定项目/版本的 KPI 集合
- GET /api/assets?project=xxx：返回图表/解释图的路径与元数据
- GET /api/samples?project=xxx：返回成功/失败/边界样例的结构化信息
- 鉴权：首版无需；后续可加只读 token 或内网访问

## 安全与合规
- 公开资料不含敏感数据；样例脱敏处理
- 图表与指标标注采样窗口与口径，避免误导
- 外链资源校验可用性与版权范围

## 性能与可用性
- 静态站点首屏直出；CDN 缓存命中
- 图片与图表按需压缩与懒加载
- 后续交互图表仅在需要时加载（可选）

## 监控与反馈（第二阶段）
- 采集基础行为数据：浏览、点击、停留时长
- 设定转化目标：外链点击率、联系/约面试次数
- 汇总反馈清单，驱动迭代

## 迭代与发布流程
- Story 驱动：按 stories/ 中的 01–09 执行与验收
- 首版发布：完成两项目区块、四类核心图表、KPI 总览与统一口径
- 后续增强：前端交互图表、轻量 API、数据自动化接入

