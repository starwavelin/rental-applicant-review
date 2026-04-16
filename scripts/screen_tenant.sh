#!/bin/bash
# screen_tenant.sh
# Usage:
#   bash scripts/screen_tenant.sh        → show general help
#   bash scripts/screen_tenant.sh 01     → show targeted prompt for applicant 01

APPLICANT="$1"

echo ""
echo "================================================"
echo "  NYC Tenant Screening Toolkit"
echo "================================================"
echo ""

if [ -n "$APPLICANT" ]; then
  FOLDER="applicants/$APPLICANT"

  if [ ! -d "$FOLDER" ]; then
    echo "  ERROR: Folder '$FOLDER' does not exist."
    echo "  Please create it and add the applicant's documents first."
    echo ""
    exit 1
  fi

  FILE_COUNT=$(ls -1 "$FOLDER" 2>/dev/null | wc -l | tr -d ' ')

  echo "  Applicant folder : $FOLDER"
  echo "  Documents found  : $FILE_COUNT file(s)"
  echo ""
  echo "  Paste the following into Claude Code:"
  echo ""
  echo "  ┌──────────────────────────────────────────────"
  echo "  │ Screen applicant $APPLICANT"
  echo "  └──────────────────────────────────────────────"
  echo ""
  if [ "$FILE_COUNT" -eq 0 ]; then
    echo "  ⚠️  The folder is empty. Add the applicant's documents to '$FOLDER' first."
    echo ""
  fi
else
  echo "  To screen an applicant, run:"
  echo ""
  echo "    bash scripts/screen_tenant.sh 01"
  echo ""
  echo "  Replace '01' with the applicant folder number you want to screen."
  echo ""
  echo "  Or type directly in Claude Code:"
  echo ""
  echo "    'Screen applicant 01'"
  echo ""
  echo "  Claude Code will automatically read all documents in applicants/01/"
  echo "  and produce a structured screening report."
  echo ""
  echo "  Documents to place in the applicant folder:"
  echo "    - Bank statements (last 2-3 months)"
  echo "    - Credit report"
  echo "    - Pay stubs (last 2-3 months)"
  echo "    - Tax returns (2023 and 2024)"
  echo "    - Any landlord reference notes"
  echo "    - Background check results"
  echo ""
  echo "  Output: A structured report with APPROVE / DECLINE recommendation."
  echo ""
  echo "  Templates available in /templates:"
  echo "    - application-questionnaire.md  (send to applicants)"
  echo "    - approval-letter.md"
  echo "    - rejection-letter.md"
  echo ""
  echo "================================================"
fi
