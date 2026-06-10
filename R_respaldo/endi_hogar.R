library(haven)
library(dplyr)

#poner la ruta del archivo
hogar <- read_dta("C:/Users/alexi/OneDrive/Desktop/MUESTREO/PROYECTO DESNUTRICIÓN/Ronda 1/2. Información Estadística/Base de Datos - peíodo vigente/BDD_ENDI_R1_dta/BDD_ENDI_R1_dta/BDD_ENDI_R1_f1_hogar_Trabajada.dta")


# Crear dataset hogar
dataset_hogar <- hogar %>%
  select(
    
    # Identificadores
    id_upm,
    id_viv,
    id_hogar,
    
    # Diseño muestral
    fexp,
    estrato,
    
    # Ubicación
    area,
    region,
    prov,
    
    # Vivienda
    f1_s3_2,
    f1_s3_9,
    f1_s3_11,
    f1_s3_12,
    f1_s3_14,
    f1_s3_15,
    f1_s3_16,
    f1_s3_20,
    
    # Higiene
    f1_s3_23,
    f1_s3_25,
    f1_s3_26_a,
    
    # Seguridad alimentaria
    f1_s4_1_1,
    f1_s4_1_6,
    
    # Calidad agua
    cloro_v,
    ecoli_v
  )
dataset_hogar <- as.data.frame(dataset_hogar)

head(dataset_hogar)

str(dataset_hogar)


