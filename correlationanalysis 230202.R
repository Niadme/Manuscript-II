#Correlationmatrix 

library(Hmisc)
library(corrplot)

cor.mtest(manus2, use ="pairwise.complete.obs",method="spearman")
cor(manus2, use ="pairwise.complete.obs",method="spearman")


#Bivariate associations indiviually

cor.test(manus2$Aggression_total, manus2$Antisocial, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$callous_aggression_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_goals, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_impulse, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Aggression_total, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")


cor.test(manus2$ACE_total, manus2$Aggression_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$Antisocial_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$callous_aggression_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_goals, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_impulse, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$ACE_total, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$Antisocial_total, manus2$callous_aggression_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_goals, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_impulse, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$Antisocial_total, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$callous_aggression_total, manus2$DERS_total, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$callous_aggression_total, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$callous_aggression_total, manus2$DERS_goals, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$callous_aggression_total, manus2$DERS_impulse, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$callous_aggression_total, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$callous_aggression_total, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$callous_aggression_total, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$DERS_total, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_total, manus2$DERS_goals, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_total, manus2$DERS_impulse, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_total, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_total, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_total, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$DERS_goals, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_goals, manus2$DERS_impulse, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_goals, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_goals, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_goals, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$DERS_impulse, manus2$DERS_strat1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_impulse, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_impulse, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_impulse, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$DERS_strat1, manus2$DERS_clarity1, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_strat1, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_strat1, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$DERS_clarity1, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")
cor.test(manus2$DERS_clarity1, manus2$DERS_awareness, use = "pairwise.complete.obs", method = "spearman")

cor.test(manus2$DERS_awareness, manus2$DERS_nonacceptance, use = "pairwise.complete.obs", method = "spearman")

#END OF SCRIPT
