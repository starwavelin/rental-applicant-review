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
and save their submitted files into a numbered folder:

```
applicants/
└── 01/          ← place all documents for applicant group 1 here
    ├── bank-statement-jan.pdf
    ├── credit-report.pdf
    ├── pay-stubs.pdf
    └── ...
```

Supported file types: PDF, images, text, markdown — anything the applicant submits.

### 3. Run the screening in Claude Code

**Option A — type directly in Claude Code:**

> "Screen applicant 01"

Claude Code will automatically read all files in `applicants/01/` and
run the screening skill. No need to attach files manually.

**Option B — use the helper script:**

```bash
bash scripts/screen_tenant.sh 01
```

This prints a ready-made prompt and confirms how many documents were found
in the folder.

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
