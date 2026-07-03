aws ec2 run-instances --image-id ami-0ff8a91507f77f867 \
  --instance-type t3.micro \
  --key-name patientping-key \
  --subnet-id subnet-0fb6b8382037df21b \
  --security-group-ids sg-0ffedfe777e1e4478 \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=patientping-web}]'
