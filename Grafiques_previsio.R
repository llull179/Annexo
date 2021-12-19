#GRÀFIQUES PREVISIÓ

datos = read.table("clipboard")
colnames(datos) <- c('hores_estudi','nota')

Hores_estudi=datos$hores_estudi
Nota = datos$nota

#Histograma
hist(rstandard(lm(Hores_estudi~Nota)))


#Gràfiques residuals vs fitted i Normal Q-Q
plot(lm(Hores_estudi~Nota))

#GRÀFIQUES PREVISIÓ AMB LOGARiTMES

Hores_estudi_log= scan("C:\\Users\\Iván Serrano\\Downloads\\hores_estudi_log",sep=",")
Notes_log= scan("C:\\Users\\Iván Serrano\\Downloads\\notes_log.txt",sep=",")

#Histograma
hist(rstandard(lm(Hores_estudi_log~Notes_log)))

#Gràfiques residuals vs fitted i Normal Q-Q
plot(lm(Hores_estudi_log~Notes_log))