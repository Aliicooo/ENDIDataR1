library(dplyr)

# 1. Personas + Hogar
base_maestra_ninez <- dataset_personas %>%
  left_join(
    dataset_hogar,
    by = c("id_upm", "id_viv", "id_hogar")
  )

# 2. Agregar Salud Niñez
base_maestra_ninez <- base_maestra_ninez %>%
  left_join(
    dataset_salud_ninez,
    by = c("id_upm", "id_viv", "id_hogar", "id_per")
  )

# 3. Agregar Lactancia
base_maestra_ninez <- base_maestra_ninez %>%
  left_join(
    dataset_lactancia,
    by = c("id_upm", "id_viv", "id_hogar", "id_per")
  )

# 4. Agregar Desarrollo Infantil
base_maestra_ninez <- base_maestra_ninez %>%
  left_join(
    desarrollo_infantil,
    by = c("id_upm", "id_viv", "id_hogar", "id_per")
  )

dim(base_maestra_ninez)

sum(
  duplicated(
    base_maestra_ninez[
      c("id_upm","id_viv","id_hogar","id_per")
    ]
  )
)

base_maestra_ninez <- as.data.frame(base_maestra_ninez)

class(base_maestra_ninez)
