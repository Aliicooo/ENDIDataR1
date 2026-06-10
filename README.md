# ENDIDataR1

<!-- badges: start -->
<!-- badges: end -->

El paquete **ENDIDataR1** contiene los datos de la **Encuesta Nacional sobre Desnutrición Infantil (ENDI) - Ronda 1** para su fácil uso en R.

## Datos incluidos

El paquete incluye 7 conjuntos de datos:

| Dataset | Descripción |
|---------|-------------|
| `dataset_hogar` | Base de hogares |
| `dataset_personas` | Información sociodemográfica y antropométrica |
| `dataset_mef` | Mujeres en edad fértil |
| `dataset_lactancia` | Información de lactancia y alimentación |
| `dataset_salud_ninez` | Información de salud infantil |
| `dataset_desarrollo_infantil` | Información de desarrollo infantil |
| `base_maestra_ninez` | Integración de los módulos principales |

## Instalación

### Desde GitHub (recomendado)

# Instalar desde GitHub
remotes::install_github("Aliicooo/ENDIDataR1")

Ejemplos

# Cargar el paquete
library(ENDIDataR1)

# Ver los datos
head(dataset_hogar)
head(base_maestra_ninez)

# Ayuda
?dataset_hogar
text




