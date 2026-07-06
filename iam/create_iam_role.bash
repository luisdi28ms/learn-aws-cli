SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

aws iam create-role \
  --role-name patientping-ec2-readonly-role \
  --assume-role-policy-document "file://${SCRIPT_DIR}/policies/patientping_ec2_readonly_role.json"
