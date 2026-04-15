# NYC Tenant Screening Toolkit

A Claude Code skill repo for NYC landlords to systematically screen rental applicants.

## 📁 Repo Structure

```
nyc-tenant-screening/
├── README.md                        ← You are here
├── requirements.md                  ← Your rental property requirements
├── skills/
│   └── tenant-screening/
│       └── SKILL.md                 ← Core screening skill for Claude Code
├── templates/
│   ├── application-questionnaire.md ← Send this to applicants to fill out
│   ├── approval-letter.md           ← Template for approval notice
│   └── rejection-letter.md          ← Template for rejection notice (Adverse Action)
├── samples/
│   └── sample-screening-report.md   ← Example of what a completed report looks like
└── scripts/
    └── screen_tenant.sh             ← Quick-start script to run screening in Claude Code
```

---

## 🚀 How to Use

### 1. Set your requirements

Edit `requirements.md` with your property details (rent amount, address, etc.)

### 2. Collect applicant documents

Ask the applicant to fill out `templates/application-questionnaire.md`
and submit:

- Bank statements (last 2–3 months)
- Credit report
- Pay stubs (last 2–3 months)
- Tax returns (last 2 years)

### 3. Run the screening in Claude Code

```bash
bash scripts/screen_tenant.sh
```

Or manually in Claude Code:

> "Please screen this tenant using the tenant-screening skill.
> Monthly rent is $2,500. Here are their documents: [attach PDFs]"

### 4. Review the report

Claude will output a structured report with a clear recommendation:

- ✅ APPROVE
- ⚠️ APPROVE WITH CONDITIONS
- 🚩 DECLINE
- ❓ NEED MORE INFO

### 5. Send the appropriate letter

Use `templates/approval-letter.md` or `templates/rejection-letter.md`

---

## ⚖️ Legal Reminder

NYC Fair Housing Law prohibits rejecting tenants based on:
race, religion, national origin, gender, disability, age,
familial status, sexual orientation, or **source of income (Section 8)**.

Always base decisions on: income, credit, rental history, and background only.
