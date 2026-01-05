getwd()
setwd("C:/Users/HOANG PHUC/Downloads/Candidate 2025/Projet FDI")

# clear data & close graphs
rm(list=ls()) # to clear
graphics.off() # to close figure

# Define the working directory
setwd(" ") # setting path for directory
getwd() # Find the actual working directory

install.packages("xts")       # Recall: xts = matrix + time (or index)
install.packages("readxl")    # Import data from excel file
install.packages("ISLR2")     # Book ISLR 2nd version database
install.packages("car")       # Companion to Applied Regression
install.packages("xts")       # Recall: xts = matrix + time (or index)
install.packages("readxl")    # Import data from excel file
install.packages("ISLR2")     # Book ISLR 2nd version database
install.packages("ggfortify")
install.packages("ggplot2")
install.packages("broom")
install.packages("dplyr")
install.packages("MASS")
#-----------------------------------------------------------
#!         loading package into the R session              !
#-----------------------------------------------------------
library(MASS)
library(ISLR2)
library(ggplot2)
library(ggfortify)
library(dplyr)
library(lmtest) # for Bresch-Pagan, Homoscedasicity test
library(broom)
library(car)
library(corrplot)


database <- read.csv("Memoire2025.csv")
colnames(database) <- c("Country", "ln_IDE","ln_PIB_ha","ln_PIB_ha2","NOCC","SPO","ln_PT","ln_FBCF_ha","INF")


vars <- c( "ln_IDE","ln_PIB_ha","ln_PIB_ha2","NOCC","SPO","ln_PT","ln_FBCF_ha","INF")
corr <- cor(database[, vars], use = "complete.obs")
corrplot(corr,
         method = "color",
         col = colorRampPalette(c("lightblue", "white", "pink"))(200),
         tl.col = "black",
         tl.cex = 1,
         tl.font = 1,
         type = "upper",
         diag = FALSE)


#modele complete
my_slr <- lm(ln_IDE ~ ln_PIB_ha + ln_PIB_ha2 + NOCC + SPO + ln_PT + ln_FBCF_ha + INF, data = database)
summary(my_slr)

#modele final
backward_model <- step(my_slr, direction = "backward")
summary(backward_model)

#R^2 et sigma
r_squared <- backward_model %>% glance() %>% pull(r.squared)
sigma <- backward_model %>% glance() %>% pull(sigma)


#-----------------------------------------------------------
#!                     Diagnostic Test                    !
#-----------------------------------------------------------
# A)  Test de normalité: Test de Jarque-Bera
shapiro.test(residuals(backward_model))


# B) test d' Homoscedasticité: Test de Breush-Pagan
bptest(backward_model)

# C) Test de multicolinéarité: VIF
vif(backward_model)


#-----------------------------------------------------------
#!                     Diagnostic plot                     !
#-----------------------------------------------------------
# --------- A) Grouped graphs --------------------
autoplot(backward_model)

# --------- B) Individual graph --------------------
autoplot(backward_model, which = 1, nrow = 1, ncol =1) # fitted vs residuals

autoplot(backward_model, which = 2, nrow = 1, ncol =1)

autoplot(backward_model, which = 3, nrow = 1, ncol =1) # fitted vs studentized residuals

autoplot(backward_model, which = 5, nrow = 1, ncol =1) # leverage statistic

autoplot(backward_model, which = 4, nrow = 1, ncol =1) # Cook's distance plot
#selon l'indicateur cook's distance se basre sur (réidus + leverage)
# y a 3 valeurs abérrant AVEC effet de levier (dans l'odre): 8,29 et 40
