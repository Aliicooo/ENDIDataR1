library(haven)
library(dplyr)

# Leer base
salud_ninez <- read_dta("C:/Users/alexi/OneDrive/Desktop/MUESTREO/PROYECTO DESNUTRICIÓN/Ronda 1/2. Información Estadística/Base de Datos - peíodo vigente/BDD_ENDI_R1_dta/BDD_ENDI_R1_dta/BDD_ENDI_R1_f2_salud_ninez.dta")

# Crear dataset salud niñez
dataset_salud_ninez <- salud_ninez %>%
  select(
    
    # Identificadores
    id_upm,
    id_viv,
    id_hogar,
    id_mef,
    id_per,
    id_mef_per,
    
    # Diseño muestral
    fexp,
    estrato,
    
    # Ubicación
    area,
    region,
    prov,
    
    # Controles prenatales
    f2_s4b_404,
    f2_s4b_405,
    f2_s4b_406,
    f2_s4b_408,
    f2_s4b_409_a,
    f2_s4b_410_a,
    
    # Parto y nacimiento
    f2_s4c_429_a,
    f2_s4c_430_a,
    f2_s4c_431,
    f2_s4d_432,
    f2_s4d_444,
    f2_s4d_445,
    
    # Controles y crecimiento
    f2_s4f_456,
    f2_s4f_461_a,
    f2_s4f_461_b,
    f2_s4f_461_c,
    f2_s4f_463_a,
    
    # Lactancia y alimentación
    f2_s4f_467_b,
    f2_s4f_468,
    
    # Enfermedades
    f2_s4g_471,
    f2_s4g_476,
    f2_s4h_482,
    f2_s4h_485,
    
    # Micronutrientes
    f2_s4i_487,
    f2_s4i_488,
    f2_s4i_492,
    f2_s4i_498,
    
    # Vacunas
    f2_s4j_499,
    f2_s4j_500,
    f2_s4j_501_a_a,
    f2_s4j_501_a_b,
    f2_s4j_501_a_c,
    f2_s4j_501_a_e,
    f2_s4j_501_a_h,
    f2_s4j_501_a_p,
    
    # Desarrollo infantil
    f2_s5_500,
    f2_s5_506,
    f2_s5_512,
    f2_s5_513
  )

dataset_salud_ninez <- as.data.frame(dataset_salud_ninez)
str(dataset_salud_ninez)

