aws ec2 create-subnet \
  --vpc-id vpc-0adfb83a2025ad01e \
  --cidr-block 10.0.0.0/24 \
  --availability-zone us-east-1a \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=patientping-private-a}]'

aws ec2 create-subnet \
  --vpc-id vpc-0adfb83a2025ad01e \
  --cidr-block 10.0.1.0/24 \
  --availability-zone us-east-1b \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=patientping-private-b}]'

aws ec2 create-subnet \
  --vpc-id vpc-0adfb83a2025ad01e \
  --cidr-block 10.0.2.0/24 \
  --availability-zone us-east-1a \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=patientping-public-a}]'

aws ec2 create-subnet \
  --vpc-id vpc-0adfb83a2025ad01e \
  --cidr-block 10.0.3.0/24 \
  --availability-zone us-east-1b \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=patientping-public-b}]'
