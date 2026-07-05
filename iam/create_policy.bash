SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
aws iam create-policy --policy-name patientping-ec2-readonly \
  --policy-document "file://${SCRIPT_DIR}/policies/patientping_ec2_readonly.json"
