---
title: "PLL Calculator - PLL開發工具 V1.3更新"
date: 2026-06-21 20:00:00 +0800
categories: Circuit
tags: [PLL, Tools]
math: true
---

本PLL計算軟體由作者開發，能夠再給定規格下計算環路濾波器參數，並且能透過輸出的Phase noise來計算RMS jitter與damping factor等參數。
更新
V1.3 : 增加PLL control line & output frequency time domain response，使用差分方程式計算control voltage

[Download PLL_Calculator_V1.3](https://github.com/BensonTa1/BensonTa1.github.io/releases/download/V1.3/PLL_Calculator_V1.3.exe)

[Github Release Page](https://github.com/BensonTa1/BensonTa1.github.io/releases)

## 1.Overview

本次更新筆者加入了PLL time domain的模擬圖，支援1 2 3階的迴路濾波器，
基本上就是描述PFD的狀態機，loop filter的差分方程式，最後再計算VCO輸出的相位來完成計算。

![Desktop Vew](/assets/image/8-1-TD.png){: width="800" height="600" }

程式會跑出Control voltage, Output frequency, Charge pump current三張time domain的波形，
左邊的Time domain simulation輸入框中可以輸入模擬的時間與VCO的初始頻率。