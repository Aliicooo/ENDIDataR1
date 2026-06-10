library(haven)
library(dplyr)
lactancia  <- read_dta("C:/Users/alexi/OneDrive/Desktop/MUESTREO/PROYECTO DESNUTRICIÓN/Ronda 1/2. Información Estadística/Base de Datos - peíodo vigente/BDD_ENDI_R1_dta/BDD_ENDI_R1_dta/BDD_ENDI_R1_f2_lactancia.dta")
#View(lactancia)

# Crear dataset lactancia
dataset_lactancia <- lactancia %>%
  select(
    
    # Identificadores
    id_upm,
    id_viv,
    id_hogar,
    id_mef,
    id_per,
    id_mef_per,
    
    # Diseño muestral
    fexp_lm,
    estrato,
    
    # Ubicación
    area,
    region,
    prov,
    
    # Lactancia
    f2_s3_302,
    f2_s3_304,
    f2_s3_306,
    f2_s3_307_1,
    f2_s3_308,
    
    # Alimentación complementaria
    f2_s3_309,
    f2_s3_311,
    f2_s3_313,
    
    # Biberón y leche artificial
    f2_s3_314,
    f2_s3_315,
    f2_s3_318,
    
    # Condiciones laborales
    f2_s3_319,
    f2_s3_320,
    f2_s3_321,
    f2_s3_322
  )
dataset_lactancia <- as.data.frame(dataset_lactancia)
str(dataset_lactancia)


