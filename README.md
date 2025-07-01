# VA SQL Server Data Warehouse Starter Kit

This repository provides a modular, VA-compliant framework for building a SQL Server–based data warehouse with SSIS scaffolding, secure audit logging, and PII masking workflows. Designed for agility, compliance, and integration with CI/CD pipelines.

---

## 🧱 Features

- ✅ **NIST-aligned architecture** for VA data warehousing
- 🔒 Built-in **PII data masking and audit logging**
- ⚙️ SSIS scaffolding for **modular, reusable ETL packages**
- 🚀 Supports GitHub Actions / Azure DevOps for **CI/CD deployments**
- 🧭 PowerShell-based deploy scripts for SQL and SSIS asset promotion

---

## 📁 Folder Structure

```
data-warehouse-starter/
├── src/
│   ├── sql/
│   │   ├── staging/           # Staging table DDLs
│   │   ├── warehouse/         # Dimension & fact schemas
│   │   ├── audit/             # Audit trail schema & triggers
│   │   └── masking/           # UDFs, views for PII handling
│   └── ssis/
│       ├── file-loader/       # File ingest template (.dtsx)
│       ├── scrubber/          # PII masking flow
│       └── core/              # Metadata-driven SSIS tasks
├── templates/
│   ├── config-tables.sql
│   └── logging-table.sql
├── deploy/
│   ├── init.ps1               # Bootstrap database setup
│   └── pipeline.yml           # GitHub Actions CI/CD pipeline
├── docs/
│   ├── architecture.md
│   ├── compliance.md
│   └── diagrams/
├── .gitignore
└── README.md
```

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/kurtkluth/data-warehouse-starter.git
   cd data-warehouse-starter
   ```

2. Execute the PowerShell bootstrap (requires SMO/SqlServer module):
   ```bash
   ./deploy/init.ps1
   ```

3. Open and configure the SSIS projects in `src/ssis/`

4. Review compliance docs in [`docs/compliance.md`](docs/compliance.md)

---

## 🧪 Security & Compliance

This solution is built with **VA Handbook 6500** and **NIST 800-53** guidelines in mind, including:

- Sensitive Data Masking via Secure Views and UDFs
- Change and Access Logging via Trigger-based Auditing
- Deployment Separation and Scripted Configuration

📄 See [`docs/compliance.md`](docs/compliance.md) for detailed breakdown.

---

## 🛠 Roadmap

- [ ] Add synthetic test data generator (non-PII)
- [ ] Add Azure Data Factory pipeline alternative
- [ ] Package templates via Biml and T-SQLt unit tests

---

## 🤝 Contributing

Open to public sector engineers looking to improve standardization, governance, and modernization. Fork, branch, PR—and let’s elevate compliance-centered data infrastructure.

---

## 📝 License

Distributed under the MIT License. See [`LICENSE.md`](LICENSE.md) for more information.
```


