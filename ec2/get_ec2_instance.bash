aws ec2 describe-instances --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-web-v2'
