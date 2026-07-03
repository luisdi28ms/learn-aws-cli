aws ec2 describe-route-tables --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-public-rt'
