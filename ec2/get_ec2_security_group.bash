aws ec2 describe-security-groups --no-cli-pager --output json \
  --filters 'Name=group-name,Values=patientping-public'
