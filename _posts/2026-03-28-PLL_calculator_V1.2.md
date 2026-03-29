---
title: "PLL Calculator - PLL開發工具"
date: 2026-03-28 11:00:00 +0800
categories: Circuit
tags: [PLL, Tools]
math: true
---

本PLL計算軟體由作者開發，能夠再給定規格下計算環路濾波器參數，並且能透過輸出的Phase noise來計算RMS jitter與damping factor等參數。

[Download PLL_Calculator_V1.2](https://github.com/BensonTa1/BensonTa1.github.io/releases/download/tools/PLL_Calculator_V1.2.exe)

[Github Release Page](https://github.com/BensonTa1/BensonTa1.github.io/releases/tag/tools)

## 1.Overview

本軟體為一套 PLL（Phase-Locked Loop）分析與設計工具，用於評估鎖相迴路的頻率響應、穩定性與雜訊表現。使用者只需輸入系統參數，即可自動計算並視覺化：

開迴路（Open-loop）Bode Plot,
閉迴路（Closed-loop）頻率響應,
VCO 傳遞函數與相位雜訊,
PLL 輸出相位雜訊分佈,
輸出表現（Phase Margin、Bandwidth、Jitter 等）

此外，系統提供 Loop Filter 自動設計與手動輸入功能，支援不同階數（1st / 2nd / 3rd order），便於設計與最佳化。

![Desktop Vew](/assets/image/4-1-GUI.png){: width="800" height="600" }

## 2.Input

主要輸入參數包含：

- **PLL Parameters**
  - Reference Frequency
  - Phase Margin
  - Loop Bandwidth
  - Charge Pump Current
  - VCO Gain (Kvco)
  - Divide Ratio

- **Frequency Sweep**
  - Start / Stop Frequency
  - Points

- **Phase Noise**
  - VCO Noise（PN @ offset, Corner）
  - Reference Noise（Noise Floor, Corner）

> **Note**
>VCO Noise Corne 為VCO phase noise -30dB/dec與-20dB/dec的轉折頻率,
>Reference Noise Corne 為Reference phase noise -10dB/dec與0dB/dec的轉折頻率
{: .prompt-info }

- **Loop Filter**
  - 支援 1st / 2nd / 3rd order
  - 自動計算 R、C，並可手動調整


![Desktop Vew](/assets/image/4-2-Input.png){: width="200" height="200" }

## 3.Bode Plot Output
系統提供完整頻率響應圖：

- **Open Loop Response**
  - 顯示增益與相位
  - 可觀察 Phase Margin 與單位增益帶寬
- **Closed Loop Response**
  - 顯示系統頻寬（-3 dB）

- **VCO Transfer Function & Phase Noise**
  - VCO Phase noise與頻率響應

- **PLL Output Phase Noise**
  - 繪製 VCO、Reference 與總輸出雜訊

![Desktop Vew](/assets/image/4-3-Bode.png){: width="800" height="600" }

> **Note**
>對波德圖按左鍵可以叫出marker，右鍵則刪除marker
{: .prompt-info }

## 4.Parameter Output
輸出設計結果：

- **頻率**
  - f0dB（開迴路單位增益帶寬）
  - f-3dB（閉迴路頻寬）

- **穩定性**
  - Phase Margin

- **輸出表現**
  - RMS Jitter 
  - Natural Frequency
  - Damping Factor

- **系統資訊**
  - Reference Frequency
  - Output Frequency

![Desktop Vew](/assets/image/4-4-Parameter.png){: width="800" height="600" }