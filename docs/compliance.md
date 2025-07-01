# 📄 Compliance Mapping: VA SQL Server Data Warehouse Starter

This document outlines how the solution aligns with security controls defined in:

- **VA Handbook 6500** – Information Security Program
- **NIST SP 800-53 (Rev. 5)** – Security and Privacy Controls for Information Systems

---

## 🔐 Control Matrix

| Feature/Implementation                  | VA Handbook 6500 | NIST 800-53 Ref | Description                                                                 |
|----------------------------------------|------------------|-----------------|-----------------------------------------------------------------------------|
| Role-Based Access Control (RBAC)       | 6500 Appendix D  | AC-2, AC-6      | SQL roles and schema separation enforce least privilege.                   |
| PII Masking via Views/UDFs             | 6500 Appendix F  | SC-12, SC-28    | Data masking routines obfuscate sensitive fields from unauthorized users.  |
| Audit Logging Tables & Triggers        | 6500 Chapter 8   | AU-2, AU-6      | Custom audit tables and triggers log key DML events with user context.     |
| Config-Driven Metadata Tables          | 6500 Ch. 10      | CM-6, SI-10     | Centralized config enables controlled updates and separation of duties.    |
| SSIS Template for Secure File Loading  | 6500 App. G      | SC-7, AC-17     | Inbound file validation prevents malformed or unauthorized data loads.     |
| PowerShell Deployment Scripts          | 6500 Ch. 9       | CM-2, CM-5      | Idempotent, script-based deployment ensures traceable infrastructure.      |
| Logging Table with Timestamps/User     | 6500 Appendix H  | AU-8            | All ETL actions log time, source, and identity for full auditability.      |
| GitHub Actions Pipeline Integration    | 6500 Appendix E  | CA-7, SA-11     | CI/CD pipeline with template enforcement and validation gates.             |

---

## 🛠 Implementation Notes

- **Data Masking**: Built-in templates include `dbo.ufn_MaskSSN()` and secure views (e.g., `vw_Patient_Demographics`) to restrict exposed columns to authorized roles.
- **Audit Trail**: Every data load inserts metadata into `[audit].[etl_activity_log]` including filename, record count, success/failure, and job initiator.
- **CI/CD Controls**: Example `pipeline.yml` enforces lint checks, naming conventions, and permissioned secrets for deployment accounts.

---

## ✅ Next Steps

- [ ] Perform independent code review by VA ISSO representative.
- [ ] Align SSIS dataflow packages with Section 508 accessibility (where applicable).
- [ ] Define retention and purge logic for `[audit]` and `[log]` tables in accordance with VA policy.

---

> This document supports due diligence and audit readiness under VA and federal IT compliance programs. For questions or clarifications, refer to the full VA Handbook 6500 or reach out to your Information Security Officer (ISO).
