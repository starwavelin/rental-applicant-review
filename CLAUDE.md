# NYC Tenant Screening Toolkit — Claude Code Instructions

## Applicant Folder Convention

All applicant documents are stored locally in numbered subfolders:

```
applicants/
├── 01/   ← documents for applicant group 1
├── 02/   ← documents for applicant group 2
└── ...
```

Each folder may contain any combination of: bank statements, credit reports,
pay stubs, tax returns, background check results, landlord reference notes,
or any other documents the applicant submitted (PDF, image, text, markdown).

## How to Screen an Applicant

When the user says any of the following:
- "screen applicant 01"
- "analyze applicant 02"
- "review applicant 01"
- or any similar phrasing with a folder number

You must follow these steps **in order**:

1. **List all files** in `applicants/{N}/` to see what documents are available
2. **Read every file** in that folder (use the Read tool for each file)
3. **Read `requirements.md`** to load the landlord's property criteria
4. **Read `skills/tenant-screening/SKILL.md`** to load the screening methodology
5. **Produce the full structured screening report** following the format defined
   in SKILL.md, using the documents and criteria gathered above
6. **Save the report** to `applicants/{N}/report.md` using the Write tool

Do not ask the user to attach files — read them directly from the folder.
If the folder is empty or missing, tell the user which folder path was checked
and ask them to add the applicant's documents there.

## Screening Report Output

Always output the complete structured report as defined in SKILL.md, including:
- Applicants table
- Income Assessment
- Credit Assessment
- Bank Statement Assessment
- Landlord Reference
- Background Check
- Red Flags Summary
- Missing Documents checklist
- Overall Recommendation (APPROVE / APPROVE WITH CONDITIONS / DECLINE / NEED MORE INFO)

After displaying the report in the conversation, write the identical content to
`applicants/{N}/report.md` (where `{N}` is the folder number that was screened).
Confirm to the user that the report has been saved and state the file path.
