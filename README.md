# Laboratorio 7 — ENEIC, segmentación y predicción salarial

## Archivos del proyecto

- `notebooks/Lab7_Avance.ipynb`: notebook con las actividades 1 a 8, resultados, gráficas e interpretaciones.
- `data/raw/`: cinco bases de Personas y sus diccionarios oficiales.
- `data/parquet/`: conjuntos preparados de 2025 y 2026T1.
- `data/outputs/modelos/`: modelos de validación y modelos finales guardados por Spark.
- `scripts/descargar_datos.sh`: descarga las bases y diccionarios desde el [INE](https://www.ine.gob.gt/encuesta-nacional-de-empleo-e-ingresos/). Ejecútelo desde la raíz del proyecto con `sh scripts/descargar_datos.sh` si necesita recuperar la data.
- `Laboratorio 7. Spark ML Lib (2026).pdf`: guía del laboratorio.

Para volver a ejecutar el notebook se necesita un entorno con Spark 3.5.x, pandas, openpyxl, matplotlib y seaborn. Se usan 2025T1–T3 para entrenar, 2025T4 para elegir configuraciones y 2026T1 únicamente para la prueba final.

Las bases, los Parquet y los modelos quedan fuera de Git por tamaño; el repositorio conserva el notebook, la guía y el procedimiento de descarga. Este trabajo se realiza individualmente.
