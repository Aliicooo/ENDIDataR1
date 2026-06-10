# Leer base
library(haven)
library(dplyr)


mef <- read_dta("C:/Users/alexi/OneDrive/Desktop/MUESTREO/PROYECTO DESNUTRICIÓN/Ronda 1/2. Información Estadística/Base de Datos - peíodo vigente/BDD_ENDI_R1_dta/BDD_ENDI_R1_dta/BDD_ENDI_R1_f2_mef.dta")
#View(mef)

# Crear dataset MEF
dataset_mef <- mef %>%
  select(
    
    # Identificadores
    id_upm,
    id_viv,
    id_hogar,
    id_mef,
    
    # Diseño muestral
    fexp,
    estrato,
    
    # Ubicación
    area,
    region,
    prov,
    
    # Características generales
    f2_s1_101,
    
    # Embarazo y control prenatal
    f2_s2_200,
    f2_s2_202,
    f2_s2_205,
    f2_s2_207,
    
    # Suplementación
    f2_s2_208,
    f2_s2_210,
    f2_s2_211,
    f2_s2_213,
    
    # Historial reproductivo
    f2_s2_223,
    f2_s2_233_4,
    f2_s2_226,
    f2_s2_228
  )
dataset_mef <- as.data.frame(dataset_mef)
str(dataset_mef)
