# aws ec2 create-route-table --vpc-id vpc-0adfb83a2025ad01e \
#   --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=patientping-public-rt}]'

aws ec2 create-route-table --vpc-id vpc-0adfb83a2025ad01e \
  --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=patientping-private-rt}]'
