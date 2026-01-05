# Analyse économétrique des déterminants de l’Investissement Direct Étranger (IDE) — 2022
## 🎯 Objectif du projet
Ce projet vise à analyser empiriquement les **déterminants macroéconomiques des flux d’Investissements Directs Étrangers (IDE) entrants** à partir d’un échantillon de **100 pays en 2022**.
Deux questions de recherche principales sont étudiées :
1️⃣ Quels facteurs économiques influencent significativement l’attractivité des IDE ?  
2️⃣ Ces effets varient-ils selon le niveau de développement économique des pays ?
Les fondements théoriques mobilisés sont :
- le modèle OLI de **Dunning (1980)**
- la théorie du Système-Monde de **Wallerstein (1974)**

---
## 📦 Données
- Unité d’observation : pays  
- Taille de l’échantillon : 100  
- Année observée : 2022  
### Sources de données
- World Bank
- International Labour Organisation (ILO)
- World Integrated Trade Solution (WITS)
- Heritage Foundation
- United Nations DESA

---
## 📌 Variables étudiées
### Variable dépendante
| Variable | Description |
|---------|-------------|
| IDE | Flux nets d’IDE entrants (PIB constant 2021, dollars internationaux en PPA) |
### Variables explicatives
- PIB par habitant (log + terme quadratique)
- Niveau d’Ouverture de Commerce Concurrentielle (NOCC)
- Indice de Stabilité Politique
- Productivité du travail (log)
- Formation Brute de Capital Fixe par habitant (FBCF, log)
- Inflation

---
## 📊 Méthodologie
Cette étude applique :
- une **régression linéaire MCO (OLS)**
- une **élimination progressive (backward)** des variables non significatives
- des **tests de validité économétrique** :
  ✔ normalité des résidus  
  ✔ homoscédasticité  
  ✔ absence de multicolinéarité  
  ✔ bonne spécification du modèle  

---
# ✅ Modèle final retenu
Après élimination des variables non significatives, le modèle final est :
ln(IDE)i = 14.958 + 0.1378·NOCCi − 0.59·SPOi + 0.8534·ln(FBCF_per_capitai)

---
## 📈 Performance du modèle
| Indicateur | Valeur |
|-----------|-------:|
| R² | 0.8554 |
| R² ajusté | 0.8510 |
| Statistique F | 189.36 |
| Prob(F) | 3.52 × 10⁻⁴⁰ |
👉 **≈ 85,5 %** de la variance des IDE est expliquée par le modèle  
👉 Le modèle est **hautement significatif statistiquement**

---
## 🔍 Significativité des variables
| Variable | Coefficient | p-value | Interprétation |
|----------|------------:|--------:|----------------|
| NOCC | +0.1378 | 0.000353 | Effet positif et significatif |
| Stabilité politique | −0.59 | 0.0128 | Effet négatif et significatif |
| ln(FBCF par habitant) | +0.8534 | ≈ 0 | Effet positif très fort |
| Constante | 14.958 | < 0.0001 | — |

---
## 🧪 Tests économétriques
| Test | Résultat | Conclusion |
|------|--------|------------|
| Shapiro–Wilk | p = 0.0666 | normalité acceptée |
| Breusch–Pagan | p = 0.1651 | pas d’hétéroscédasticité |
| VIF (max) | 1.78 | pas de multicolinéarité |
| Spécification | valide | ✔ |
✔ Les hypothèses MCO sont respectées

---
# 📌 Interprétations économiques
### 1️⃣ Niveau d’ouverture commerciale concurrentielle (NOCC)
**+1 point de NOCC → +13,78 % d’IDE**
✔ les économies ouvertes et compétitives attirent plus d’IDE

---
### 2️⃣ Formation Brute de Capital Fixe par habitant (FBCF)
**+1 % de FBCF par habitant → +85,34 % d’IDE**
✔ l’investissement domestique en infrastructures est déterminant

---
### 3️⃣ Stabilité politique
**+1 point → −59 % d’IDE**
➡ Résultat contre-intuitif pouvant refléter :
- régimes très stables mais autoritaires  
- faible transparence institutionnelle  
- concurrence limitée  
🟡 sujet à approfondissement

---
# 🌍 Test de rupture structurelle
Deux sous-échantillons ont été testés :
- 31 pays développés  
- 69 pays en développement  
| Test | Valeur | Conclusion |
|------|------:|------------|
| Fisher | 0.251 | aucune rupture détectée |
| Valeur critique | 1.767 | — |
👉 les déterminants de l’IDE sont **structurellement stables**

---
# 🧠 Conclusions principales
✔ l’IDE est stimulé par :
- la capacité d’investissement domestique  
- l’ouverture commerciale concurrentielle  
❗ la stabilité politique ne garantit pas l’attractivité  
🌍 le niveau de développement **ne modifie pas la structure des déterminants**

---
# ⚠️ Limites
- analyse sur une seule année  
- variables institutionnelles limitées  
- pas d’analyse sectorielle  

---
## 👤 Auteur
**PHAN Nguyen Hoang Phuc**  
**CAO Thi Oanh**
Université de Rennes — Faculté des Sciences Économiques  

---
## 💼 Finalité du projet
Ce dépôt peut servir pour :
- travaux académiques  
- candidature en Master / stage  
- portfolio en économie quantitative  
- support d’analyse de politiques publiques  

