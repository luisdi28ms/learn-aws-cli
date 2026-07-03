aws ec2 describe-internet-gateways --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-igw'
