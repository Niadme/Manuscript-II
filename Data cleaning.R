#Packages
library(ggplot2)
library(foreign)
library(naniar)
library(dplyr)
library(psych)
library(car)
library(pastecs)
library(Hmisc)
library(ggm)
library(polycor)
library(QuantPsyc)
library(mediation)
library(haven)
library(DescTools)

manus<-read_sav("datafilen_230131.sav")

Aggression<-manus[, c("DK_174", "DK_175", "DK_176", "DK_177", "DK_178")]
Antisocial<-manus[, c("DK_181", "DK_182", "DK_183", "DK_184")]


Antisocial <- replace_with_na(Antisocial, replace = list(DK_181 = c(999, 99, 998), DK_182 = c(999, 99, 998), DK_183 = c(999, 99, 998), DK_184 = c(999, 99, 998)))
Aggression <- replace_with_na(Aggression, replace = list(DK_174 = 999, DK_175 = 999, DK_176 = 999, DK_177 = 999, DK_178 = 999))

Aggression$DK_174[is.na(Aggression$DK_174)] <- mean(Aggression$DK_174, na.rm = TRUE)
Antisocial$DK_181[is.na(Antisocial$DK_181)] <- mean(Antisocial$DK_181, na.rm = TRUE)

Aggression <- mutate(Aggression, Aggression_total = DK_174 + DK_175 + DK_176 + DK_177 + DK_178)
Antisocial <- mutate(Antisocial, Antisocial_total = DK_181 + DK_182 + DK_183 + DK_184)

Aggression<-dplyr::select(Aggression, Aggression_total)
Antisocial<-dplyr::select(Antisocial, Antisocial_total)


DERS<-manus[, c(451:486)]

DERS <- replace_with_na_all(DERS, condition = ~ .x == 999)


DERS$SA_1 <- 6-DERS$SA_1
DERS$SA_2 <- 6-DERS$SA_2
DERS$SA_6 <- 6-DERS$SA_6
DERS$SA_7 <- 6-DERS$SA_7
DERS$SA_8 <- 6-DERS$SA_8
DERS$SA_10 <- 6-DERS$SA_10
DERS$SA_17 <- 6-DERS$SA_17
DERS$SA_20 <- 6-DERS$SA_20
DERS$SA_22 <- 6-DERS$SA_22
DERS$SA_24 <- 6-DERS$SA_24
DERS$SA_34 <- 6-DERS$SA_34

DERS$SA_5[is.na(DERS$SA_5)] <- mean(DERS$SA_5, na.rm = TRUE)
DERS$SA_9[is.na(DERS$SA_9)] <- mean(DERS$SA_9, na.rm = TRUE)
DERS$SA_16[is.na(DERS$SA_16)] <- mean(DERS$SA_16, na.rm = TRUE)
DERS$SA_20[is.na(DERS$SA_20)] <- mean(DERS$SA_20, na.rm = TRUE)
DERS$SA_21[is.na(DERS$SA_21)] <- mean(DERS$SA_21, na.rm = TRUE)

DERS<-mutate(DERS, DERS_total = SA_1+SA_2+SA_3+SA_4+SA_5+SA_6+SA_7+SA_8+SA_9+SA_10+SA_11+SA_12+SA_13+SA_14+SA_15+SA_16+SA_17+SA_18+SA_19+SA_20+SA_21+SA_22+SA_23+SA_24+SA_25+SA_26+SA_27+SA_28+SA_29+SA_30+SA_31+SA_32+SA_33+SA_34+SA_35+SA_36)
DERS<-mutate(DERS, nonacceptance = SA_11 + SA_12 + SA_21 + SA_23 + SA_25 + SA_29)
DERS<-mutate(DERS, goals = SA_13 + SA_18 + SA_20 + SA_26 + SA_33)
DERS<-mutate(DERS, impulse = SA_3 + SA_14 + SA_19 + SA_24 + SA_27 + SA_32)
DERS<-mutate(DERS, awareness = SA_2 + SA_6 + SA_8 + SA_10 + SA_17 + SA_34)
DERS<-mutate(DERS, strat = SA_15 + SA_16 + SA_22 + SA_28 + SA_30 + SA_31 + SA_35 + SA_36)
DERS<-mutate(DERS, clarity = SA_1 + SA_4 + SA_5 + SA_7 + SA_9)


DERS<-cbind(DERS)

DERS<-DERS[, c("DERS_total", "goals", "impulse", "strat", "clarity", "nonacceptance", "awareness")]


callous_aggression<-manus[, c("SE_161", "SE_256", "SE_137", "SE_138", "SE_140", "SE_150", "SE_157", "SE_159", "SE_175", "SE_183", "SE_196", "SE_198", "SE_211","SE_223", "SE_235", "SE_243", "SE_245", "SE_250", "SE_281")]

callous_aggression <- replace_with_na_all(callous_aggression, condition = ~ .x == 999)

callous_aggression$SE_140<- recode(callous_aggression$SE_140, "0=3; 1=2; 2=1; 3=0")
callous_aggression$SE_235<- recode(callous_aggression$SE_235, "0=3; 1=2; 2=1; 3=0")
callous_aggression$SE_245<- recode(callous_aggression$SE_245, "0=3; 1=2; 2=1; 3=0")
callous_aggression$SE_256<- recode(callous_aggression$SE_256, "0=3; 1=2; 2=1; 3=0")
callous_aggression$SE_281<- recode(callous_aggression$SE_281, "0=3; 1=2; 2=1; 3=0")



callous_aggression$SE_256[is.na(callous_aggression$SE_256)] <- mean(callous_aggression$SE_256, na.rm = TRUE)
callous_aggression$SE_137[is.na(callous_aggression$SE_137)] <- mean(callous_aggression$SE_137, na.rm = TRUE)
callous_aggression$SE_161[is.na(callous_aggression$SE_161)] <- mean(callous_aggression$SE_161, na.rm = TRUE)

callous_aggression<-mutate(callous_aggression, callous_aggression_total = SE_137 + SE_138 + SE_140 + SE_150 + SE_157 + SE_159 + SE_161 + SE_175  + SE_183 + SE_196 + SE_198 + SE_211 + SE_223 + SE_235 + SE_243 + SE_245 + SE_250 + SE_256 + SE_281)

callous_aggression<-dplyr::select(callous_aggression, callous_aggression_total)


ACE<-manus[, c("DC_61", "DC_57", "DC_43", "DC_45", "DC_23", "DC_55", "DC_65", "DC_66", "DC_47", "DC_37")]

ACE <- replace_with_na_all(ACE, condition = ~ .x == 999)
ACE <- replace_with_na_all(ACE, condition = ~ .x == 99)

ACE<- mutate(ACE, DC_65_66 = DC_65 + DC_66)

ACE$DC_61 <- recode(ACE$DC_61, "c(1, 2, 3, 4) = 1")
ACE$DC_57 <- recode(ACE$DC_57, "c(1, 2, 3, 4) = 1")
ACE$DC_43 <- recode(ACE$DC_43, "c(1, 2, 3, 4) = 1")
ACE$DC_45 <- recode(ACE$DC_45, "c(1, 2, 3, 4) = 1")
ACE$DC_23 <- recode(ACE$DC_23, "c(1, 2, 3, 4) = 1")
ACE$DC_55 <- recode(ACE$DC_55, "c(1, 2, 3, 4) = 1")
ACE$DC_65_66 <- recode(ACE$DC_65_66, "c(1, 2, 3, 4, 5, 6) = 1")
ACE$DC_47 <- recode(ACE$DC_47, "c(1, 2, 3, 4) = 1")
ACE$DC_37 <- recode(ACE$DC_37, "c(1, 2, 3, 4) = 1")

ACE<-mutate(ACE, ACE_total = DC_61+DC_57+DC_43+DC_45+DC_23+DC_55+DC_65_66+DC_47+DC_37)

ACE<-dplyr::select(ACE, ACE_total)

manus2<-cbind(ACE, Aggression, Antisocial, callous_aggression, DERS)

write.csv(manus2, "manuscript two code.csv")
