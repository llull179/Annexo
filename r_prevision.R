Horas_log = scan("C:\\Users\\Usuario\\Desktop\\horas_log.txt",sep=",")
Notas_log = scan("C:\\Users\\Usuario\\Desktop\\notas_log.txt",sep=",")

mean_horas = mean(Horas_log)
#mean_horas = 0.8927035
mean_notas = mean(Notas_log)
#mean_notas = 1.847887

var_horas = var(Horas_log)
#var_horas = 0.5418478
var_notas = var(Notas_log)
#var_notas = 0.0767062

sd_horas = sd(Horas_log)
#sd_horas = 0.7361031
sd_notas = sd(Notas_log)
#sd_notas = 0.2769588

covarianza = cov(Horas_log,Notas_log)
#covarianza = 0.02575735
R_xy = covarianza/(sd_horas*sd_notas)
#R_xy = 0.1263419
B_1 = R_xy*(sd_notas/sd_horas)
#B_1 = 0.04753615
B_0 = mean_notas - B_1*mean_horas
#B_0 = 1.805451

n = 98
S2 = ((n-1)*(var_notas - B_1*covarianza))/(n-2)
#S2 = 0.07626806

S_b0 = S2*((1/n)+(mean_horas/((n-1)*var_horas)))
#S_b0 = 0.002073637
S_b1 = S2/((n-1)*var_horas)
#S_b1 = 0.001451088








