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
| IDE     | Flux nets d’IDE entrants (PIB constant 2021, dollars internationaux en PPA) |

### Variables explicatives
- PIB par habitant (log + terme quadratique)  
- Niveau d’Ouverture de Commerce Concurrentielle (NOCC)  
- Indice de Stabilité Politique (SPO)  
- Productivité du travail (log)  
- Formation Brute de Capital Fixe par habitant (FBCF, log)  
- Inflation  

---
## 📊 Méthodologie
Cette étude applique :
- une **régression linéaire par Moindres Carrés Ordinaires (MCO)**  
- une **élimination progressive (backward)** des variables non significatives  
- des **tests de validité économétrique** :  
  - normalité des résidus  
  - homoscédasticité  
  - absence de multicolinéarité  
  - vérification de la spécification linéaire  

---
# ✅ Modèle final retenu
Après élimination des variables non significatives, le modèle final estimé est :
> ln(IDE)\_i = 14.958 + 0.1378 · NOCC\_i − 0.59 · SPO\_i + 0.8534 · ln(FBCF\_habitant,i)

| Indicateur    | Valeur  |
|--------------|--------:|
| R²           | 0.8554  |
| R² ajusté    | 0.8510  |
| Statistique F| 189.36  |
| Prob(F)      | 3.52 × 10⁻⁴⁰ |

👉 Environ **85,5 %** de la variance des IDE est expliquée par le modèle.  
👉 Le modèle est **hautement significatif** sur le plan statistique.

---
## 🔍 Significativité des variables

| Variable                  | Coefficient | p-value     | Interprétation                        |
|---------------------------|------------:|------------:|----------------------------------------|
| NOCC                      | +0.1378     | 0.000353    | Effet positif, significatif           |
| Stabilité politique (SPO) | −0.59       | 0.0128      | Effet négatif, significatif           |
| ln(FBCF par habitant)     | +0.8534     | ≈ 0         | Effet positif très fort, significatif |
| Constante                 | 14.958      | < 0.0001    | —                                      |

---

## 🧪 Tests économétriques (diagnostics)

| Test                  | Résultat       | Conclusion                          |
|-----------------------|---------------:|-------------------------------------|
| Shapiro–Wilk          | p = 0.0666     | normalité des résidus non rejetée  |
| Breusch–Pagan         | p = 0.1651     | pas d’hétéroscédasticité détectée  |
| VIF (maximum)         | 1.78           | pas de multicolinéarité problématique |
| Spécification graphique | conforme     | spécification linéaire acceptable  |

✔ Les principales hypothèses des MCO sont raisonnablement satisfaites.

---
# 📌 Interprétations économiques
### 1️⃣ Niveau d’ouverture de commerce concurrentielle (NOCC)
- Une augmentation d’**un point** de l’indice NOCC est associée à une hausse moyenne d’environ **13,78 %** des flux d’IDE.
- Un environnement commercial **ouvert et concurrentiel** favorise l’attractivité des capitaux étrangers.

---
### 2️⃣ Formation Brute de Capital Fixe par habitant (FBCF)
- Une augmentation de **1 %** de la FBCF par habitant est associée à une hausse d’environ **0,8534 %** des IDE (élasticité forte et positive).
- L’investissement domestique en infrastructures et capital fixe est un **déterminant majeur** de l’IDE.

---
### 3️⃣ Stabilité politique (SPO)
- Une hausse de l’indice de stabilité politique d’une unité est associée à une **baisse** des IDE d’environ **59 %**.
Ce résultat, contre-intuitif par rapport à l’hypothèse théorique initiale, peut refléter notamment :
- des régimes très stables mais **peu transparents** ou **peu concurrentiels**,  
- un environnement politique où la stabilité ne rime pas forcément avec attractivité économique,  
- un effet de composition lié aux pays de l’échantillon.

---
# 🌍 Test de rupture structurelle
Deux sous-échantillons sont considérés :
- 31 pays développés  
- 69 pays en développement

Les résultats du test de stabilité structurelle sont les suivants :
| Test            | Valeur | Conclusion                   |
|-----------------|-------:|-----------------------------|
| Statistique F   | 0.251  | aucune rupture détectée     |
| Valeur critique | 1.767  | H₀ non rejetée au seuil 5 % |

👉 L’hypothèse de **stabilité des coefficients** entre pays développés et pays en développement **n’est pas rejetée**.  
👉 Les déterminants de l’IDE sont globalement **les mêmes, quel que soit le niveau de développement**.

---
# 🧠 Conclusions principales
- Les flux d’IDE sont **positivement influencés** par :
  - l’**ouverture commerciale concurrentielle** (NOCC) ;  
  - la **formation brute de capital fixe par habitant** (FBCF).  
- La **stabilité politique** présente un effet **négatif significatif**, ce qui invite à distinguer :
  - stabilité « saine » (sécurité juridique, État de droit)  
  - stabilité « verrouillée » (régimes très fermés ou autoritaires).
- Le **niveau de développement économique** (pays développés vs en développement) ne semble **pas modifier structurellement** les déterminants identifiés.

---
# ⚠️ Limites de l’étude
- Analyse **transversale** sur une seule année (2022) :  
  ➜ impossibilité de capter la dynamique temporelle des IDE.
- Variables explicatives **limitées** :
  ➜ certaines dimensions institutionnelles, fiscales ou sectorielles ne sont pas intégrées.
- Absence de **désagrégation sectorielle** des IDE :
  ➜ les déterminants peuvent différer entre IDE industriels, financiers ou de services.

---
## 👤 Auteur
**PHAN Nguyen Hoang Phuc**  
**CAO Thi Oanh**
Université de Rennes — Faculté des Sciences Économiques  

---
## 💼 Finalité du dépôt
Ce dépôt GitHub peut être utilisé comme :
- support de **mémoire de fin de licence** ;  
- élément de **portfolio académique** pour candidatures en Master ou stage ;  
- exemple de **projet d’économétrie appliquée** ;  
- base de travail pour **analyses de politiques publiques** relatives aux IDE.  
