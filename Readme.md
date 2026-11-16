# 🏥 Healthcare Operations & Financial Risk Analytics

Análisis exploratorio y modelado de datos de **5,000 registros de pacientes** en el sector salud, con un enfoque estratégico en la optimización de estancias hospitalarias, costos de tratamiento, análisis por departamentos médicos y mitigación del riesgo financiero por readmisión.

---

## 📌 1. Contexto del Proyecto

La operación hospitalaria analizada procesa un volumen financiero total de **$274.5M USD** en costos de tratamientos a través de 5,000 visitas de pacientes[cite: 13, 14]. El proyecto aborda la auditoría de calidad de datos, ingeniería de variables para calcular el impacto de riesgo financiero cruzado (*Treatment Cost × Readmission Risk*), y consultas analíticas avanzadas en MySQL.

### 🛠️ Herramientas Utilizadas
* **Python (`pandas`, `numpy`):** Pipeline ETL, estandarización de variables, control de nulos y feature engineering (`tipo_atencion_estancia`, `financial_risk_impact`)[cite: 13].
* **MySQL:** Modelado relacional, creación de tablas transaccionales con restricciones de llave primaria y consultas de agregación por departamento y región[cite: 14].
* **Microsoft Excel:** Análisis de datos y validación cruzada de métricas operativas.

---

## ❓ 2. Preguntas Clave que quise resolver

1. **Impacto Financiero del Riesgo:** ¿Qué departamentos médicos y regiones geográficas concentran el mayor riesgo financiero acumulado por readmisión?
2. **Tipos de Estancia y Tratamiento:** ¿Cómo se relacionan los días de estancia hospitalaria (`length_of_stay_days`) con la tipología de atención (Ambulatorio vs. Hospitalizado)?
3. **Distribución de Costos y Readmisión:** ¿Cuál es el comportamiento del costo promedio por tratamiento frente al riesgo estimado en las diferentes áreas del hospital?

---

## 📂 3. Estructura del Repositorio

* **`Data/healthcare_sample_github.csv`** — Muestra estratificada (1,001 registros) del dataset procesado (`Healthcare_Cleaned_v2.csv`).
* **`Notebooks/01_data_cleaning_healthcare.ipynb`** — Jupyter Notebook con el pipeline ETL completo.
* **`Database/script.sql`** — Script completo de MySQL para la creación de la tabla y consultas de análisis.
* **`Reports/Informe_SupplyChain_PedroVargas.pdf — Reporte ejecutivo listo para descargar
* **`Outputs/Executive_dashboard.png — Captura general del tablero en Excel
* **`README.md — Documentación principal del proyecto.

---

## 🔍 4. Principales Hallazgos y Análisis

### 🏥 Distribución por Departamentos y Riesgo Financiero
Al analizar el impacto financiero cruzado (*Financial Risk Impact*):
* **Orthopedics** y **Cardiology** lideran la exposición financiera global debido al volumen de pacientes y la complejidad de los tratamientos quirúrgicos y de observación.
* El riesgo de readmisión promedio se mantiene estable en torno al **28.1%** global, lo que resalta la necesidad de protocolos de seguimiento post-alta unificados[cite: 13].

### ⏱️ Eficiencia Operativa (Estancias)
* Se identificaron pacientes con **0 días de estancia**, clasificados automáticamente mediante ingeniería de características como *Ambulatorio / Alta el mismo día*, optimizando la lectura analítica frente a las hospitalizaciones prolongadas[cite: 13].

---

## 🚀 5. Cómo clonar y revisar el proyecto

```bash
git clone [https://github.com/pedro-vargas-data/healthcare-analytics-operations.git](https://github.com/pedro-vargas-data/healthcare-analytics-operations.git)
cd healthcare-analytics-operations

Desarrollado por Pedro Vargas Salgado | www.linkedin.com/in/pedrovargas-data-mba