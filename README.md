# B2B SaaS Product-Led Growth (PLG) & Enterprise Conversion Pipeline

An end-to-end data analytics and predictive pipeline engineered to resolve a classic corporate scaling challenge: managing millions of freemium accounts with limited inside sales headcounts. This system implements an automated **Product Qualified Lead (PQL)** classification pipeline that monitors user interaction logs, predicts enterprise conversion propensities, and populates an operational sales enablement control tower dashboard.

## 🛠️ The Tech Stack Pipeline
The project architecture connects four separate technology layers to process raw data into live revenue insights:
* **Microsoft Excel:** Executed data quality audits, string standardization, and domain filtering to quarantine personal accounts (`@gmail.com`, `@yahoo.com`) and clean text typos before database ingestion.
* **SQL (Supabase Cloud PostgreSQL):** Structured relational analytics tables and executed **Common Table Expressions (CTEs)** and window functions to compute rolling user velocity benchmarks.
* **Python & Machine Learning (Google Colab):** Engineered high-signal behavioral features, handled extreme real-world class imbalance (3.5% conversion baseline) using **Balanced Class Weights**, and trained a classification model to output a continuous **Propensity Upgrade Score (0.0 to 1.0)**.
* **Power BI Desktop:** Deployed a production-grade executive dashboard featuring a **PQL Prioritization Matrix** sorted descending by predictive machine learning weights to filter high-propensity targets (>80% probability).

## 📋 Data Schema & Feature Engineering
The predictive engine scores and ranks corporate workspaces based on these core telemetry features:
* `workspace_id`: Unique organizational cluster identifier.
* `company_domain`: Cleaned corporate domain used to identify valid corporate entities.
* `active_users`: Count of unique employee logins within a 30-day window.
* `weekly_invites_sent`: Interaction velocity measure showing internal app viral spread.
* `advanced_clicks`: Count of premium feature usage triggers.
* `upgrade_probability`: Continuous output score (0% - 100%) mapped by the predictive ML algorithm.

## 🚀 Key Business Impact
* **Funnel Efficiency:** Replaced blind cold-calling strategies with an automated, data-driven lead allocation matrix for inside sales teams.
* **Velocity Tracking:** Automatically flags the top high-value corporate trial accounts, reducing the enterprise B2B sales cycle duration.
* **Executive Visibility:** Provides revenue operations leaders with region-specific conversion pipelines directly inside an interactive visualization control tower.
