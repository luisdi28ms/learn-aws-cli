aws ec2 describe-vpcs --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping'
