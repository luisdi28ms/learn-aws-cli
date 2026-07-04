# aws ec2 create-security-group --group-name patientping-public \
#   --description "Allow public access" \
#   --vpc-id vpc-0adfb83a2025ad01e

aws ec2 create-security-group \
  --group-name patientping-rds-sg \
  --description 'Security group for PatientPing RDS' \
  --vpc-id vpc-0adfb83a2025ad01e
