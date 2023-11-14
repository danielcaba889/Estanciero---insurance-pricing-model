getwd()

#########################################
############### CASILLEROS ##############
#########################################

nro_casillero <- 0:41

#casilleros especiales:
#4,7,10,14,15,21,25,28,35,36,38,41

Provincia <- c("Salida",
  "Formosa sur",
  "Formosa centro",
  "Formosa norte",
  "Impuesto a los reditos",
  "Río negro sur",
  "Río negro norte",
  "Premio ganadero",
  "Petrolera",
  "Salta sur",
  "Destino 1",
  "Salta centro",
  "Ferrocarril Belgrano",
  "Salta norte",
  "Comisaría",
  "Suerte 1",
  "Bodega",
  "Mendoza sur",
  "Ferrocarril San Martín",
  "Mendoza centro",
  "Mendoza norte",
  "Descanso",
  "Ferrocarril Mitre",
  "Santa fe sur",
  "Santa fe centro",
  "Destino 2",
  "Santa fe norte",
  "Ferrocarril Urquiza",
  "Libre estacionamiento",
  "Tucumán sur",
  "Tucumán norte",
  "Ingenio",
  "Córdoba sur",
  "Córdoba centro",
  "Córdoba norte",
  "Marche preso",
  "Suerte 2",
  "Buenos Aires sur",
  "Destino 3",
  "Buenos Aires centro",
  "Buenos Aires norte",
  "Impuesto a las ventas"
  )

df <- data.frame(nro_casillero,Provincia)
View(df)

df[df$nro_casillero==34,]$Provincia #indica quÃ© provincia estÃ¡ en el casillero 34


#########################################
############### Sin dueÃ±o ##############
#########################################
vacio <- rep(0,42)
df["vacío"] <- vacio




#########################################
############### alquiler ##############
#########################################


alquiler <- c(0,
              40,40,80,
  5000,
  110,150,
  0,
  700,
  200,0,200,500,230,2000,0,
  700,
  250,500,250,300,0,
  500,350,350,0,400,
  500,0,400,450,700,
  500,450,550,2000,0,
  650,0,650,1000,2000)

#########################################
############### Chacra 1 ##############
#########################################

chacra1 <- c(0,
  200,200,400,NA,
  570,750,NA,
  1400,1000,0,1000,1000,1150,
  NA,0,1400,1350,1000,1350,1500,
  NA,1000,1700,1700,0,2000,1000,
  0,2200,2400,1400,2500,2400,2850,
  NA, 0, 3300,0,3300,4000,NA)

df <- data.frame(nro_casillero,Provincia,vacio,alquiler,chacra1)

length(chacra1)
length(alquiler)
length(nro_casillero)

#########################################
############### Chacra 2 ##############
#########################################


#df$chacra2 <-  rep(NA,42)
#
#for (i in 0:41){
#  df$chacra2[i+1] <-readline(prompt= paste(df$Provincia[i+1] ,"idem con 2 chacras: "))
#}

#########################################
############### Chacra 3 ##############
#########################################

#df$chacra3 <-  rep(NA,42)
#
#for (i in 0:41){
#  df$chacra3[i+1] <-readline(prompt= paste(df$Provincia[i+1] ,"idem con 3 chacras: "))
#}

#########################################
############### Chacra 4 ##############
#########################################

#df$chacra4 <-  rep(NA,42)
#
#for (i in 0:41){
#  df$chacra4[i+1] <-readline(prompt= paste(df$Provincia[i+1] ,"idem con 4 chacras: "))
#}


#########################################
############### Estancia ##############
#########################################
#df$chacra5 <-  rep(NA,42)
#
#for (i in 0:41){
#  df$chacra5[i+1] <-readline(prompt= paste(df$Provincia[i+1] ,"idem con 1 estancia: "))
#}



#######################################
############## GUARDO VALORES #########
#########################################


#df$nro_casillero
#  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
#33 34 35 36 37 38 39 40 41

#df$Provincia
#"Salida"                 "Formosa sur"            "Formosa centro"         "Formosa norte"         
#[5] "Impuesto a los reditos" "Río negro sur"          "Río negro norte"        "Premio ganadero"       
#[9] "Petrolera"              "Salta sur"              "Destino 1"              "Salta centro"          
#[13] "Ferrocarril Belgrano"   "Salta norte"            "Comisaría"              "Suerte 1"              
##[17] "Bodega"                 "Mendoza sur"            "Ferrocarril San Martín" "Mendoza centro"        
#[21] "Mendoza norte"          "Descanso"               "Ferrocarril Mitre"      "Santa fe sur"          
#[25] "Santa fe centro"        "Destino 2"              "Santa fe norte"         "Ferrocarril Urquiza"   
#[29] "Libre estacionamiento"  "TucumÃ¡n sur"            "TucumÃ¡n norte"          "Ingenio"               
#[33] "CÃ³rdoba sur"            "CÃ³rdoba centro"         "CÃ³rdoba norte"          "Marche preso"          
#[37] "Suerte 2"               "Buenos Aires sur"       "Destino 3"              "Buenos Aires centro"   
#[41] "Buenos Aires norte"     "Impuesto a las ventas" 


#df$alquiler
# 0   40   40   80 5000  110  150    0  700  200    0  200  500  230 2000    0  700  250  500  250
#[21]  300    0  500  350  350    0  400  500    0  400  450  700  500  450  550 2000    0  650    0  650
#[41] 1000 2000

df$chacra1

#0  200  200  400   NA  570  750   NA 1400 1000    0 1000 1000 1150   NA    0 1400 1350 1000 1350
#[21] 1500   NA 1000 1700 1700    0 2000 1000    0 2200 2400 1400 2500 2400 2850   NA    0 3300    0 3300
#[41] 4000   NA

as.numeric(df$chacra2)
#0  600  600  800    0 1700 2000    0 2100 2800    0 2800 2000 3400    0    0 2100 3800 2000 3800
#[21] 4200    0 2000 4750 4750    0 5750 2000    0 6000 6800 2100 6500 6800 8500    0    0 9500    0 9500
#[41] 1200    0

as.numeric(df$chacra3)
# 0  1700  1700  3400     0  5150  5700     0     0  8500     0  8500  4000  9500     0     0
#[17]     0 10500  4000 10500 11500     0  4000 13000 13000     0 14000  4000     0 15000 16000     0
#[33] 17000 16000 19000     0     0 22000     0 22000 26000     0

as.numeric(df$chacra4)
#[1]     0  3000  3000  6000     0  7600  8500     0     0 12000     0 12000     0 13000     0     0
#[17]     0 14200     0 14200 15000     0     0 16000 16000     0 17000     0     0 18000 19500     0
#[33] 21000 19500 23000     0     0 25000     0 25000 31000     0


as.numeric(df$chacra5)
#0  4750  4750  9500     0  9500 11500     0     0 14200     0 14200     0 17000     0     0
#[17]     0 18000     0 18000 19000     0     0 20000 20000     0 21000     0     0 21000 23000     0
#[33] 24000 23000 27000     0     0 30000     0 30000 36000     0





df$chacra2 <- c(
  0,  600,  600,  800,    0, 1700, 2000,    0, 2100, 2800,    0, 2800, 2000, 3400,    0,    0, 2100, 3800, 2000, 3800,
  4200,    0, 2000, 4750, 4750,    0, 5750, 2000,    0, 6000, 6800, 2100, 6500, 6800, 8500,    0,    0, 9500,    0, 9500,
  1200,    0)
  

df$chacra3 <- c( 
 0,  1700,  1700,  3400,     0,  5150,  5700,     0,     0,  8500,     0,  8500,  4000,  9500,     0,     0,
     0, 10500,  4000, 10500, 11500,     0,  4000, 13000, 13000,     0, 14000,  4000,     0, 15000, 16000,     0,
 17000, 16000, 19000,     0,     0, 22000,     0, 22000, 26000,     0

)
df$chacra4 <- c( 
0,  3000,  3000,  6000,     0,  7600,  8500,     0,     0, 12000,     0, 12000,     0, 13000,     0,     0,
0, 14200,     0, 14200, 15000,     0,     0, 16000, 16000,     0, 17000,     0,     0, 18000, 19500,     0,
21000, 19500, 23000,     0,     0, 25000,     0, 25000, 31000,     0
)
df$chacra5 <- c( 
0,  4750,  4750,  9500,     0,  9500, 11500,     0,     0, 14200,     0, 14200,     0, 17000,     0,     0,
0, 18000,     0, 18000, 19000,     0,     0, 20000, 20000,     0, 21000,     0,     0, 21000, 23000,     0,
 24000, 23000, 27000,     0,     0, 30000,     0, 30000, 36000,     0
)
df[is.na(df)] <- 0


df[5,3] <- 5000
df[5,4] <- 5000
df[5,5] <- 5000
df[5,6] <- 5000
df[5,7] <- 5000
df[5,8] <- 5000
df[5,9] <- 5000

df[15,3] <- 2000
df[15,4] <- 2000
df[15,5] <- 2000
df[15,6] <- 2000
df[15,7] <- 2000
df[15,8] <- 2000
df[15,9] <- 2000

df[36,3] <- 2000
df[36,4] <- 2000
df[36,5] <- 2000
df[36,6] <- 2000
df[36,7] <- 2000
df[36,8] <- 2000
df[36,9] <- 2000



View(df)

p <- c(0:6,5:1)/36
cant_chacras <- rep(0,12)
pago <- rep(0,12)


f_casillero <- function(){
  casillero <- as.numeric(readline(prompt="casillero: "))
  prox_casilleros <- seq(casillero+1,casillero+12)
  provincia_actual <- df[df$nro_casillero==casillero,"Provincia"]
  prox_provincias <- df[prox_casilleros+1,"Provincia"]
  
  cuadro <- data.frame(prox_casilleros,prox_provincias,p,pago)
  print(cuadro)
  
  print(paste(("Bienvenido a "), provincia_actual))
  print("próximas provincias: ")
  print(prox_provincias)
  
  for (i in 1:12){
    print(cuadro[i,"prox_provincias"])
    ocupado <- readline(prompt = "Ocupado (S/N): ")
    if(ocupado=="s"){
      chacras <- as.numeric(readline(prompt = "Cant. chacras: "))
      cuadro[i,"pago"] <- df[df$Provincia==cuadro[i,"prox_provincias"],chacras+4]
    }
    if(ocupado=="n"){
      chacras <- 0
      cuadro[i,"pago"] <- df[df$Provincia==cuadro[i,"prox_provincias"],chacras+3]
    }
  }
  print(cuadro)
  
  franquicia <- as.numeric(readline(prompt = "Franquicia: "))
  cuadro$franquicia <- rep(franquicia,12)
  cuadro$aseg <- pmax(cuadro$pago-franquicia,0)
  cuadro$tasa_fija <- cuadro$aseg*cuadro$p
  
  
  print(cuadro)
  
  ut <- as.numeric(readline(prompt = "Margen de utilidad: "))
  print(paste("Prima:",sum(cuadro$tasa_fija)))
  print(paste("Premio:",sum(cuadro$tasa_fija)*(1+ut)))
  
  #print(paste(("Bienvenido a "), provincia_actual))
  #print("próximas provincias: ")
  #print(prox_provincias)
   }
  
  


f_casillero()

