
## scan de los datos
KO= scan("C:\\Users\\Iván Serrano\\Downloads\\sleepKO.txt",sep=",")
OK = scan("C:\\Users\\Iván Serrano\\Downloads\\sleepOK.txt",sep=",")

#mediana de las dos muestras
medianaKO = mean(KO)
medianaOK = mean(OK)

medianaOK
medianaKO

##varianza de las dos muestras
varKO = var(KO)
varOK = var(OK)

varOK
varKO

##desviacion tipo de las dos muestras
sdKO = sd(KO)
sdOK = sd(OK)

sdOK
sdKO

#calculo del estadistico para la comparacion de poblaciones
  #primero calculo la s pooled
s = sqrt((48*varOK+48*varKO)/(49+49-2))
s
z = (medianaOK -medianaKO)/(s*sqrt(1/49 + 1/49))
z


