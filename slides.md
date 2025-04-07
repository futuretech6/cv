---
marp: true
math: mathjax
theme: uncover
size: 16:9
---

# 个人介绍

---

## 学习经历

- 福建省厦门第一中学
- 浙江大学 | 工学学士 | 竺可桢学院混合班（计算机科学与技术主修）
- 浙江大学 | 工学硕士 | 计算机科学与技术

---

## 擅长领域

- 计算机基础：组成与体系、系统、网络
- 语言：C/C++、Python
- 其他技能：Unix Shell, Makefile, Git (CI/CD), Docker (Dockerfile)

---

# 项目经历

---

## RV-Kernel

- https://github.com/futuretech6/RV-Kernel
- 从零实现基于 RISC-V 硬件的 Linux 内核，包括内核启动模块、机器态特权态用户态切换、多进程调度器及调度算法、中断与异常机制、基于页表的 MMU 和缺页处理机制、基于 Buddy System 和 Slub Allocator 的内存分配机制、基于 mmap 的内存映射机制及对应系统调用

---

## C2SafeRust

- 立项目标：为解决目前基于 C 的 kernel 中可能存在的安全问题，项目尝试研究出一种自动化的方式将 C 写的内核驱动重写为 Rust 的，并通过 Rust 自带的安全机制来保证内核的安全
- 实际实现：一套基于内核建模的对 C 中的 use-after-free 和 double-free 漏洞的检测框架

---

## Watchpoint-Based Driver Isolation

- 利用 Arm 的 Watchpoint 机制，对敏感内存区域进行权限控制，并实现相应的故障隔离
- 应用于华为 HarmonyOS

---

## Rustle (Rust 智能合约漏洞检测)

- https://github.com/blocksecteam/rustle
- 纯静态方案，使用 LLVM Pass 对智能合约进行插桩扫描
- 检测出多个实际漏洞，获得 \$20K USD 黑客松奖金与官方 \$50K USD 开发激励

---

## Anshun (EVM 智能合约漏洞检测)

- 模拟动态的静态方案，使用了符号执行确保运行时能获得更多的上下文信息
- Precision 与 Recall 指标大幅领先工业界和学术界所有已知漏洞检测工具（正在投稿）
- 已整合进入公司（BlockSec）的审计流程与攻击预警系统，并且发挥很大作用
