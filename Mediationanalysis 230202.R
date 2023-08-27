#MEDIATION LEAD MODELS

process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="DERS_total", model = 4, total = 1, seed = 931023, boot = 5000)

process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="DERS_total", model = 4, total = 1, seed = 931023, boot = 5000)

process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="DERS_total", model = 4, total = 1, seed = 931023, boot = 5000)

#SIMPLE MEDIATION

process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="nonacceptance", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="goals", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="impulse", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="awareness", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="strat", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Aggression_total", x = "ACE_total", m ="clarity", model = 4, total = 1, seed = 931023, boot = 5000)

process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="nonacceptance", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="goals", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="impulse", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="awareness", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="strat", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "Antisocial_total", x = "ACE_total", m ="clarity", model = 4, total = 1, seed = 931023, boot = 5000)

process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="nonacceptance", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="goals", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="impulse", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="awareness", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="strat", model = 4, total = 1, seed = 931023, boot = 5000)
process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m ="clarity", model = 4, total = 1, seed = 931023, boot = 5000)



#Multiple Parallel Mediator Analysis

process (data = manus2, y = "callous_aggression_total", x = "ACE_total", m =c("DERS_nonacceptance","DERS_goals", "DERS_impulse", "DERS_strat", "DERS_clarity", "DERS_awareness"), model = 4, total = 1, seed = 931023, boot = 5000)

process (data = manus2, y = "Aggression_total", x = "ACE_total", m =c("DERS_nonacceptance","DERS_goals", "DERS_impulse", "DERS_strat", "DERS_clarity", "DERS_awareness"), model = 4, total = 1, seed = 931023, boot = 5000)

process (data = manus2, y = "Antisocial_total", x = "ACE_total", m =c("DERS_nonacceptance","DERS_goals", "DERS_impulse", "DERS_strat", "DERS_clarity", "DERS_awareness"), model = 4, total = 1, seed = 931023, boot = 5000)




