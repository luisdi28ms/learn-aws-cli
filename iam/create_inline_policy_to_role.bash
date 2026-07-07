SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
aws iam put-role-policy \
  --role-name patientping-ec2-readonly-role \
  --policy-name patientping-ssm-access \
  --policy-document file://${SCRIPT_DIR}/policies/patientping_ssm_access.json
