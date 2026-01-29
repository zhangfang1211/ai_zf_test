# 个人 AI 项目与成就展示

> 我想做一个个人网站，能够方便让人了解我的个人信息、项目经历、技能和经验  
> 我想突出我在 AI 方面的项目和成就

## 目标与受众
- 面向招聘方、合作伙伴与技术社区，快速理解你的 AI 能力与真实影响
- 用“方法论—实验—结果—影响”的闭环叙事，支撑复现与横向对比

## 可视化数据（图表清单）
- 模型性能：混淆矩阵、ROC/PR 曲线、校准曲线、Lift/增益图
- 效率与成本：延迟/吞吐曲线、吞吐-延迟折衷图、成本-性能热力图
- 数据与特征：特征重要性（SHAP）、嵌入可视化（t-SNE/UMAP）、数据漂移监控
- 解释与可视化：Attention/Grad-CAM、错误分类树/矩阵、样例成功/失败对比
- 研发过程与可靠性：数据管线/DAG、版本与实验追踪、鲁棒性与不确定性

## AI 方法论 → 可视化映射
- 训练与验证：数据分层、交叉验证、学习曲线、早停策略效果
- 调参与搜索：网格/贝叶斯搜索热力图，参数敏感性曲线
- 归因与解释：SHAP 全局/局部、特征交互效应、反事实示例
- 部署与推理优化：批量/并发对延迟与吞吐影响、量化/蒸馏前后对比
- 监控与改进：线上指标时间序列、漂移检测统计、报警阈值与命中率

## 案例展示框架（每个项目统一结构）
- 背景与场景：用户与数据来源、痛点与约束
- 方法与方案：模型结构、训练流程、关键策略与创新点
- 实验设计：数据划分、对照/实验组、评测指标与统计方法
- 结果与分析：核心图表（性能、效率、成本、稳定性），关键结论
- 业务影响：转化/留存/ARPU 或研发效率与成本节约
- 复现与资源：仓库/Notebook、数据样例、配置与版本
- 展示素材：Demo/GIF、交互图表、架构图与流程图

## 代表项目（已选定）
- 贝壳-二手财务系统 — [简历PDF](file:///Users/zhangfang/Documents/AI学习/资料/张芳-本科-9年测开经验.pdf)
- 百度-搜索Top1项目 — [简历PDF](file:///Users/zhangfang/Documents/AI学习/资料/张芳-本科-9年测开经验.pdf)
- 高途课堂-通宝客户端（PC） — [简历PDF](file:///Users/zhangfang/Documents/AI学习/资料/张芳-本科-9年测开经验.pdf)
- 美团-摩拜单车/打车APP测试 — [简历PDF](file:///Users/zhangfang/Documents/AI学习/资料/张芳-本科-9年测开经验.pdf)

## 指标与度量（统一口径）
- 训练/验证/线上三类指标与采样窗口说明
- 统计显著性：A/B 的置信区间、p 值、样本量与效应量
- 记录实验元数据：模型版本、数据快照、超参数、环境配置

## 交互与呈现建议
- 指标卡片：核心 KPI 摘要与趋势
- 图表联动：按模型版本/日期/场景标签筛选，图表联动更新
- 样例浏览：成功/失败样例切换，解释图层（SHAP/Grad-CAM）叠加
- 版本对比：差异高亮与结论卡片

## 素材清单（待收集）
- 项目名称与简介、架构/流程图、关键指标数据（基线 vs 现方法）
- Demo 或页面链接、典型样例（成功/失败/边界）与解释图
- 仓库/Notebook 链接、数据样例与配置文件

## 可用模板与资料
- 头脑风暴技巧：[brainstorming-techniques.md](file:///Users/zhangfang/Documents/AI学习/.bmad-core/data/brainstorming-techniques.md)
- 项目简报模板：[project-brief-tmpl.yaml](file:///Users/zhangfang/Documents/AI学习/.bmad-core/templates/project-brief-tmpl.yaml)
- PRD 模板：[prd-tmpl.yaml](file:///Users/zhangfang/Documents/AI学习/.bmad-core/templates/prd-tmpl.yaml)
- 前端展示规范：[front-end-spec-tmpl.yaml](file:///Users/zhangfang/Documents/AI学习/.bmad-core/templates/front-end-spec-tmpl.yaml)
- 用户指南：[user-guide.md](file:///Users/zhangfang/Documents/AI学习/.bmad-core/user-guide.md)
 - 技术档案：[tech-profile.md](file:///Users/zhangfang/Documents/AI学习/docs/tech-profile.md)
 - 架构文档：[architecture.md](file:///Users/zhangfang/Documents/AI学习/docs/architecture.md)
 - UI 架构文档：[ui-architecture.md](file:///Users/zhangfang/Documents/AI学习/docs/ui-architecture.md)
 - Stories 索引：[stories/README.md](file:///Users/zhangfang/Documents/AI学习/stories/README.md)

## 下一步行动
- 选定 1–2 个代表项目，提供名称与 4 个核心 KPI（性能、效率、成本、稳定性）
- 上传/链接架构图与关键数据截图，我来生成首批图表与页面草稿
- 使用模板生成“项目简报”和“成果要点清单”，替换上方占位内容

## 个人介绍
![个人照片](资料/个人照.jpg)

- 姓名：张芳
- 性别：女
- 最高学历：本科
- 手机号码：182****2927
- 微信：xxxOrion

### 个人技能
- 熟悉测试理论与流程，具备大型项目完整测试经验与业务分析能力
- 问题定位与推动能力强，善于协调各方解决问题
- 熟练使用 Python 进行自动化测试，具备实际项目经验
- 熟练使用 MySQL 数据库、Linux 命令、Git 版本管理工具
- 熟练使用 Postman 进行接口测试，能使用 JMeter 进行压力测试
- 熟悉常用 ADB 命令，熟练使用抓包工具 Charles 进行数据分析
- 对 Web 平台与 App 的兼容性、稳定性、电量、弱网等测试有实际经历
---

## KPI 总览（占位表）
| 指标            | 基线值 | 当前方案 | 提升幅度 | 说明 |
|-----------------|--------|----------|----------|------|
| F1              | 0.00   | 0.00     | +0.00    | 二分类/多分类统一口径 |
| Recall@K        | 0.00   | 0.00     | +0.00    | 检索/推荐场景 |
| P95 延迟（ms）  | 0      | 0        | -0       | 推理时延（越低越好） |
| 吞吐（QPS）     | 0      | 0        | +0       | 每秒请求数 |
| 单次成本（¥/req）| 0.00   | 0.00     | -0.00    | 云资源/算力成本 |

> 使用方式：将代表项目的关键指标填入表格，并在“说明”中注明采样窗口与统计口径

## 图表占位（待上传）
- 搜索产研 top1：ROC/PR 曲线 assets/roc_pr_search_top1.png
- 搜索产研 top1：混淆矩阵 assets/confusion_search_top1.png
- 搜索产研 top1：延迟-吞吐曲线 assets/latency_throughput_search_top1.png
- 搜索产研 top1：成本-性能热力图 assets/cost_perf_search_top1.png
- 通宝客户端：版本对比曲线 assets/version_compare_tongbao.png
- 通宝客户端：成本-性能热力图 assets/cost_perf_tongbao.png
- 数据漂移监控：assets/drift_monitoring.png
- SHAP 解释图：assets/shap_summary_search_top1.png
- Grad-CAM/Attention 可视化：assets/gradcam_search_top1.png

> 使用方式：将图表图片上传至 assets 目录，并将上述链接替换为真实路径

## 项目数据采集模板
| 字段 | 内容示例 |
|------|----------|
| 项目名称 | 项目 A |
| 场景与用户 | 电商搜索；DAU 50w |
| 数据来源 | 行为日志、商品元数据、图像 |
| 目标与约束 | 提升 Recall@50；P95<200ms；成本不增 |
| 模型与方法 | 双塔检索 + 召回融合；蒸馏 + 量化 |
| 训练与验证 | 分层抽样；5 折交叉验证；早停 |
| 关键参数 | embedding=768；batch=128；fp16 |
| 指标（离线） | F1/ROC/PR/Top-K |
| 指标（线上） | CTR/转化/留存；延迟/吞吐 |
| 成本与资源 | GPU A10；推理成本 0.00 元/req |
| 影响与结论 | CTR +2.3%；P95 -35ms；成本 -8% |
| 复现资源 | 仓库链接、Notebook、数据快照 |
| 展示素材 | 架构图、流程图、Demo/GIF |

## 指标说明（统一口径）
- F1/ROC/PR：注明数据集划分与采样窗口；提供阈值选择策略
- Recall@K：给出 K 值与候选集大小；说明评测集来源
- 延迟与吞吐：报告 P50/P95/P99 与测试并发；硬件配置与批量参数
- 成本：计算口径（按时/按次）；是否含网络与存储
- 显著性与置信区间：给出 A/B 样本量、p 值与效应量

## 交互展示建议（可选实施）
- 指标卡片：F1、Recall@K、P95、成本
- 图表联动：按版本/日期/场景标签筛选
- 样例浏览：成功/失败样例与解释图层叠加
- 版本对比：差异高亮与结论卡片

## 提交流程（建议）
1. 在“项目数据采集模板”中填写项目 A/B 的关键字段
2. 将首批图表上传到 assets，并替换“图表占位”链接
3. 更新“KPI 总览”表为真实数据
4. 我将根据你提交的内容生成“项目简报”和“成果展示页”首版
# ai_zf_test
