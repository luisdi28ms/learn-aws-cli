aws ec2 run-instances --image-id ami-00b2eb779cc80e1f9 \
  --instance-type t3.micro \
  --key-name patientping-key \
  --subnet-id subnet-0fb6b8382037df21b \
  --security-group-ids sg-0ffedfe777e1e4478 \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=patientping-web}]'
