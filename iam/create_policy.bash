SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# aws iam create-policy --policy-name patientping-ec2-readonly \
#   --policy-document "file://${SCRIPT_DIR}/policies/patientping_ec2_readonly.json"
#
# aws iam create-policy --policy-name patientping-deny-all \
#   --policy-document "file://${SCRIPT_DIR}/policies/patientping_deny_all.json"

aws iam create-policy --policy-name patientping-ssm-access \
  --policy-document "file://${SCRIPT_DIR}/policies/patientping_ssm_access.json"
