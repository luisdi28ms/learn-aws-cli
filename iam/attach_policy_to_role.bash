# aws iam attach-role-policy \
#   --role-name patientping-ec2-readonly-role \
#   --policy-arn "arn:aws:iam::700694289578:policy/patientping-ec2-readonly"

aws iam attach-role-policy \
  --role-name patientping-ec2-readonly-role \
  --policy-arn "arn:aws:iam::700694289578:policy/patientping-deny-all"
