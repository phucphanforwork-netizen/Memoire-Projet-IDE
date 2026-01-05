# Foreign Direct Investment Determinants — Empirical Study (2022)

## 🎯 Objective
This project analyzes the determinants of Foreign Direct Investment (FDI) inflows using cross-section data from 100 countries in 2022.
The research answers two key questions:
1️⃣ Which macroeconomic variables significantly influence FDI inflows?  
2️⃣ Do these effects differ depending on countries’ development level?
Theoretical foundations:
- Dunning’s OLI Paradigm (1980)
- World-System Theory — Wallerstein (1974)

---
## 📦 Data
- Unit of observation: Country  
- Sample size: 100  
- Year: 2022  

### Data Sources
- World Bank
- International Labour Organisation (ILO)
- World Integrated Trade Solution (WITS)
- Heritage Foundation
- United Nations DESA

---
## 📌 Variables
### Dependent Variable
| Variable | Description |
|---------|-------------|
| FDI | Net FDI inflows (constant 2021 PPP international dollars) |
### Explanatory Variables
- GDP per capita (log + squared term)
- Competitive Trade Openness Index (NOCC)
- Political Stability Index
- Labour Productivity (log)
- Gross Fixed Capital Formation per capita — GFCF (log)
- Inflation rate

---
## 📊 Methodology
- Ordinary Least Squares regression (OLS)
- Progressive elimination of non-significant variables (backward elimination)
- Diagnostic testing of OLS assumptions:
  ✔ Normality of residuals  
  ✔ Homoscedasticity  
  ✔ No multicollinearity  
  ✔ Correct functional specification  

---
# ✅ Final Regression Model (Retained)
ln(FDI)i = 14.958 + 0.1378·NOCCi − 0.59·SPOi + 0.8534·ln(GFCF_per_capitai)

---

## 📈 Model Performance
| Metric | Value |
|-------|------:|
| R² | 0.8554 |
| Adjusted R² | 0.8510 |
| F-Statistic | 189.36 |
| Prob(F) | 3.52 × 10⁻⁴⁰ |
👉 85.5% of the variation in FDI inflows is explained by the final model  
👉 The model is highly statistically significant

---
## 🔍 Variable Significance Summary
| Variable | Coefficient | p-value | Interpretation |
|----------|------------:|--------:|----------------|
| NOCC | +0.1378 | 0.000353 | Positive & significant |
| Political Stability | −0.59 | 0.0128 | Negative & significant |
| ln(GFCF per capita) | +0.8534 | < 10⁻³⁰ | Strong positive effect |
| Constant | 14.958 | < 0.0001 | — |

---
## 🧪 Econometric Diagnostics
| Test | Result | Conclusion |
|------|--------|------------|
| Shapiro–Wilk normality | p = 0.0666 | residuals normally distributed |
| Breusch–Pagan | p = 0.1651 | no heteroskedasticity |
| VIF (max) | 1.78 | no multicollinearity |
| Model specification | valid | ✔ |
✔ OLS assumptions are satisfied

---
# 📌 Key Economic Findings
### 1️⃣ Trade Openness (NOCC)
**+1 index point → +13.78% increase in FDI inflows**
✔ Economies open to competitive trade attract more foreign investment

---
### 2️⃣ Domestic Investment (GFCF per capita)
**+1% increase in GFCF per capita → +85.34% increase in FDI inflows**
✔ Infrastructure development is the strongest driver of FDI

---
### 3️⃣ Political Stability
**+1 index point → −59% decrease in FDI inflows**
This counter-intuitive result may indicate:
- highly stable but authoritarian regimes
- weaker institutional transparency
- limited market contestability
➡ Suggesting that *“stability without openness”* may deter investment

---
# 🌍 Structural Break Analysis
Two subsamples were tested:
- 31 developed economies  
- 69 developing economies  
| Test | Value | Conclusion |
|------|------:|------------|
| Fisher Statistic | 0.251 | No structural break detected |
| Critical Value | 1.767 | — |
👉 Determinants of FDI are statistically stable across development levels

---
# 🧠 Final Conclusions
✔ FDI is mainly driven by:
- strong domestic capital investment
- open and competitive trade environments
❗ Political stability alone does **not** guarantee FDI attraction
🌍 Development level does **not significantly alter** the determinants of FDI

---
# ⚠️ Limitations
- Single-year dataset (no time effects)
- Institutional variables limited
- No sector-level breakdown

---

## 👤 Author
**PHAN Nguyen Hoang Phuc**
**CAO Thi Oanh**
Université de Rennes — Faculté des Sciences Économiques  

---
## 💼 Intended Use
This repository supports:
- academic research
- Master & internship applications
- quantitative economics profiling
- policy advisory analysis

After eliminating non-significant variables, the final model is estimated as:

