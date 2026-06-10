# =========================
# DATASET DESARROLLO INFANTIL
# =========================

library(haven)
library(dplyr)

desarrollo <- read_dta(
  "C:/Users/alexi/OneDrive/Desktop/MUESTREO/PROYECTO DESNUTRICIÓN/Ronda 1/2. Información Estadística/Base de Datos - peíodo vigente/BDD_ENDI_R1_dta/BDD_ENDI_R1_dta/BDD_ENDI_R1_f3_desarrollo_inf.dta"
)

# Crear dataset desarrollo infantil
desarrollo_infantil <- desarrollo %>%
  select(
    
    # Identificadores
    id_upm,
    id_viv,
    id_hogar,
    id_per,
    id_cuid,
    
    # Diseño muestral
    fexp_di,
    estrato,
    
    # Ubicación
    area,
    region,
    prov,
    
    # Variables sociodemográficas
    relacion_cuidadora,
    edad_anios = f3_s0_1c_anios,
    edad_meses = f3_s0_1c_meses,
    
    # Estimulación temprana
    juguetes = f3_s1_100_a,
    juguetes_construccion = f3_s1_100_d,
    juguetes_aprendizaje = f3_s1_100_e,
    dispositivos = f3_s1_100_g,
    libros_hogar = f3_s1_102,
    
    # Actividades de aprendizaje
    leer_cuentos = f3_s1_108_a,
    contar_historias = f3_s1_108_b,
    cantar = f3_s1_108_c,
    pasear = f3_s1_108_d,
    jugar = f3_s1_108_e,
    dibujar = f3_s1_108_f,
    aprender_numeros = f3_s1_108_g,
    
    # Supervisión
    horas_otro_nino = f3_s1_103,
    horas_solo = f3_s1_104,
    
    # Disciplina
    explicacion = f3_s2a_200_b,
    sacudidas = f3_s2a_200_c,
    gritos = f3_s2a_200_d,
    nalgadas = f3_s2a_200_f,
    golpes_objeto = f3_s2a_200_g,
    insultos = f3_s2a_200_h,
    paliza = f3_s2a_200_k,
    
    # Crianza positiva
    abrazos = f3_s2b_201_a,
    hablar_suave = f3_s2b_201_c,
    
    # Desarrollo cognitivo
    ultimo_error = f3_s6_606,
    errores = f3_s6_607,
    puntaje_directo = f3_s6_608,
    disposicion = f3_s6_609,
    ambiente = f3_s6_610,
    
    # Salud emocional materna
    depresion_1 = f3_s7_700_a,
    depresion_2 = f3_s7_700_b,
    depresion_3 = f3_s7_700_c,
    depresion_4 = f3_s7_700_d,
    depresion_5 = f3_s7_700_e,
    depresion_6 = f3_s7_700_f,
    depresion_7 = f3_s7_700_g,
    depresion_8 = f3_s7_700_h
  )
dataset_desarrollo_infantil <- as.data.frame(desarrollo_infantil)

# Ver estructura
str(dataset_desarrollo_infantil)

# Primeras filas
head(dataset_desarrollo_infantil)
