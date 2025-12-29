---
output:
  pdf_document: default
  html_document: default
---
# random-access-memory
# Replication Guide: DMM Model Analysis

This document provides the necessary steps to replicate the utility loss results (Table 1 & 2) and the Impulse Response Functions (IRFs) from Cooley & Hansen (1989).

---

## 1. Replication: Table 2 and IRFs

To generate the results for the varying values of $g$, use the `dmm_base.mod` file.

### Step 1: Baseline and Sensitivity Runs
You must run the model five separate times, manually adjusting the value of the parameter $g$ in the `.mod` file before each run:

* **Values to test:** $g \in \{0.99, 1.0, 1.024, 1.19, 1.41\}$
* **Important:** For each run, ensure you update the filename in the `verbatim` block (or the export function)
to match the parameter value (e.g., `steady_state_values_g_1_19.csv`). This prevents overwriting previous results
and makes sure the files are ready to be fed into R for processing

### Step 2: Generate IRFs
Run the dedicated IRF script to produce the dynamic responses of the system:
* Execute: `dmm_irfs.mod` in Dynare.

---

## 2. Replication: Table 1 (Simulations)

Table 1 focuses on simulation results under different growth/policy assumptions. Run the following three files sequentially:

| File to Run | Description |
| :--- | :--- |
| `dmm_g_constant_simul.mod` | Baseline simulation with constant growth (no AR(1) Process). |
| `dmm_g_015_simul.mod` | Simulation with $\bar{g} = 1.015$ parameters. |
| `dmm_g_15_simul.mod` | Simulation with $\bar{g} = 1.15$ parameters. |

---

## 3. R Studio: Data Processing & Final Tables

Once the Dynare simulations have generated, use R to compile the final tables and charts.

### Setup & Execution
1. Open the provided `.Rmd` (R Markdown) file in R Studio.
2. Make sure to set your FRED API Key in you environment file
3. **Check Dependencies:** Ensure all required packages are installed. The `require()` function will tell you if any package is missing
4. **One-Click Run:** Click the **Knit** or **Run All** button. The script is configured to automatically ingest the CSV files generated in the previous steps and output the formatted replication tables.

> **Note:** If you encounter a "package not found" error, run `install.packages("package_name")` in the R console before re-running the `.Rmd`.

---