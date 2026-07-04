aws ec2 run-instances --launch-template LaunchTemplateName=patientping-web-launcher \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=patientping-web-v2}]'
