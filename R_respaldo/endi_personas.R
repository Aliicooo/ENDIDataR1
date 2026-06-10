library(haven)
personas  <- read_dta("C:/Users/alexi/OneDrive/Desktop/MUESTREO/PROYECTO DESNUTRICIÓN/Ronda 1/2. Información Estadística/Base de Datos - peíodo vigente/BDD_ENDI_R1_dta/BDD_ENDI_R1_dta/BDD_ENDI_R1_f1_personas_Trabajada.dta")
# View(personas )

# Crear dataset personas
dataset_personas <- personas %>%
  select(
    
    # Identificadores
    id_upm,
    id_viv,
    id_hogar,
    id_per,
    id_mef,
    
    # Diseño muestral
    fexp,
    estrato,
    
    # Ubicación
    area,
    region,
    prov,
    
    # Sociodemográficas
    etnia,
    f1_s1_2,
    f1_s1_3_1,
    grupo_edad_nin,
    
    # Educación
    nivins_mef,
    f1_s1_16,
    
    # Economía
    quintil,
    pobreza,
    nbi_1,
    
    # Antropometría
    f1_s5_4_1,
    f1_s5_6_1,
    
    
    # Desnutrición
    dcronica,
    dglobal,
    daguda,
    
    # Anemia
    ane6_59,
    ane6_59_new
  )
    
dataset_personas <- as.data.frame(dataset_personas)
str(dataset_personas)    

 
    