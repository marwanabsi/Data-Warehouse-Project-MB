# 🚀 Data Warehouse & Analytics Project

### 📖 Overview  
This project showcases a **real-world Data Warehouse and Analytics System** built using **SQL Server** and modern **ETL processes**.  
It demonstrates how raw data from multiple sources can be transformed into structured, analytics-ready datasets that power decision-making.  

Designed as a **portfolio project**, it mirrors **industry best practices** in Data Engineering, Data Modeling, and Business Intelligence — turning complex data into clear, actionable insights.

---

## 🧱 Data Architecture

![Data Architecture](https://github.com/marwanabsi/Data-Warehouse-Project-MB/blob/main/docs/Screenshot%202025-11-04%20233045.png)

The warehouse design follows the **Medallion Architecture** pattern — **Bronze**, **Silver**, and **Gold** layers — ensuring scalability, maintainability, and clarity across all ETL stages.

### 🥉 Bronze Layer  
- Stores **raw data** directly from source systems (ERP & CRM).  
- Handles **batch ingestion** via CSV into SQL Server.  
- No transformations — data is preserved as-is.

### 🥈 Silver Layer  
- Focuses on **data cleaning, validation, and standardization**.  
- Resolves data quality issues and aligns schemas.  
- Creates clean, reliable datasets for analytics.

### 🥇 Gold Layer  
- Hosts **business-ready data** structured in a **Star Schema**.  
- Performs **aggregations, joins, and KPI logic**.  
- Powers dashboards, reports, and ad-hoc analytics.

---

## 📊 Project Overview

This project includes:

1. 🧱 **Data Architecture** — Designing a modern Medallion-based data warehouse (Bronze, Silver, Gold).  
2. ⚙️ **ETL Pipelines** — Extracting, transforming, and loading datasets into SQL Server.  
3. 🧩 **Data Modeling** — Creating Fact and Dimension tables optimized for analytics.  
4. 📈 **Analytics & Reporting** — Building SQL-based insights and Power BI dashboards.  

💡 **Perfect for showcasing expertise in:**
- SQL Development  
- Data Engineering  
- ETL Automation  
- Data Modeling  
- BI & Analytics  

---

## ⚙️ Project Requirements

### 🧩 Building the Data Warehouse (Data Engineering)

**Objective:**  
Develop a modern data warehouse that consolidates ERP and CRM data, ensuring consistency, accuracy, and analytical readiness.

**Specifications:**  
- **Data Sources:** Two CSV files (ERP and CRM systems).  
- **Data Quality:** Handle duplicates, missing values, and inconsistent data types.  
- **Integration:** Combine sources into unified, analytics-ready tables.  
- **Scope:** Focus on current dataset without historization.  
- **Documentation:** Maintain data model and metadata references.

---

### 📈 BI: Analytics & Reporting (Data Analysis)

**Objective:**  
Generate SQL-based insights to support data-driven decisions on:

- 👥 **Customer Behavior**  
- 📦 **Product Performance**  
- 💰 **Sales Trends**

These insights empower stakeholders with real-time visibility into performance metrics through **Power BI dashboards** and **analytical SQL queries**.

---

## 🧭 Repository Structure
```
data-warehouse-project/
│
├── datasets/              → Raw datasets (ERP & CRM)
│
├── docs/                  → Documentation & diagrams
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/               → SQL scripts for ETL & transformations
│   ├── bronze/            → Raw data ingestion
│   ├── silver/            → Cleaning & standardization
│   └── gold/              → Business logic & reporting models
│
├── tests/                 → Quality checks & validation scripts
│
├── README.md              → Project overview
├── requirements.txt       → Dependencies & references
├──
```

---

## 🔗 Important Links & Tools

All tools used are **free and open-source**:

| 🔧 Tool | 💬 Description |
|:--|:--|
| 🗃️ **SQL Server Express** | Lightweight version for database operations |
| 🪄 **SSMS** | Manage and query SQL Server |
| 🧱 **Draw.io** | Build architecture and data flow diagrams |
| 📂 **Notion Template** | Manage project documentation |
| 💻 **GitHub Repository** | Host scripts, documentation, and diagrams |
| 📑 **CSV Datasets** | Raw source files used for ETL process |

---

## 🧠 Portfolio Insight

> This project represents how I **design real-world data ecosystems** — transforming scattered, inconsistent data into a structured, automated pipeline that delivers clarity, trust, and insights at scale.  
> It’s more than ETL; it’s about **building living systems that let data speak intelligently.**

---

## 🪪 License

This project is licensed under the **MIT License**.  
You’re free to use, modify, and share it with proper attribution.

---

## 👤 About Me

Hey there! I’m **Marwan Saeed Issa** — a **Data Engineer & Full-Stack Developer** passionate about automation, clean architecture, and data-driven systems.  
I specialize in building **end-to-end ETL pipelines**, **data warehouses**, and **reporting ecosystems** that bring data to life.

Let’s connect 👇  
[💼 LinkedIn](https://www.linkedin.com/in/marwan-issa-c53/) • [🐙 GitHub](https://github.com/marwanabsi) • [🧠 Portfolio](https://www.upwork.com/freelancers/~01b30e37860fe6979a) • [✉️ Email](mailto:marwanabsi98@gmail.com)


