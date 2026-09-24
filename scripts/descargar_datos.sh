#!/bin/sh
set -eu
PATH=/usr/bin:/bin:/usr/sbin:/sbin
mkdir -p data/raw
descargar() {
  destino="data/raw/$1"
  url="$2"
  if [ -s "$destino" ] && unzip -tqq "$destino" >/dev/null 2>&1; then
    echo "Ya existe: $destino"
  else
    curl -fsSL --retry 3 --connect-timeout 20 --max-time 600 -o "$destino.part" "$url"
    mv "$destino.part" "$destino"
  fi
}
descargar personas_2025T1.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/01/Personas_ENEIC_T1_2025.xlsx
descargar personas_2025T2.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/01/Personas-ENEIC-T2-2025.xlsx
descargar personas_2025T3.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/05/Base-de-datos-Personas-ENEIC-III-2025.xlsx
descargar personas_2025T4.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/06/Base-de-datos-Personas-ENEIC-IV-2025.xlsx
descargar personas_2026T1.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/09/Base-de-datos-Personas-ENEIC-I-2026.xlsx
descargar diccionario_2025T1.xlsx https://www.ine.gob.gt/wp-content/uploads/2025/11/Diccionario_Personas_ENEIC_I-2025.xlsx
descargar diccionario_2025T2.xlsx https://www.ine.gob.gt/wp-content/uploads/2025/11/Diccionario_Personas_ENEIC_II-2025.xlsx
descargar diccionario_2025T3.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/05/Diccionario-Personas-ENEIC-III-2025.xlsx
descargar diccionario_2025T4.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/06/Diccionario-Personas-ENEIC-IV-2025.xlsx
descargar diccionario_2026T1.xlsx https://www.ine.gob.gt/wp-content/uploads/2026/09/Diccionario-Personas-ENEIC-I-2026.xlsx
