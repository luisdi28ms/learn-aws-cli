aws ec2 describe-subnets --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-private-a'

aws ec2 describe-subnets --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-private-b'

aws ec2 describe-subnets --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-public-a'

aws ec2 describe-subnets --no-cli-pager --output json \
  --filters 'Name=tag:Name,Values=patientping-public-b'
