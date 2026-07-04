aws ec2 create-launch-template \
  --launch-template-name patientping-web-launcher \
  --version-description "Launch template for t3.micro with PatientPing app preinstalled" \
  --launch-template-data '{
      "ImageId": "ami-00b2eb779cc80e1f9",
      "InstanceType": "t3.micro",
      "KeyName": "patientping-key",
      "NetworkInterfaces": [
        {
          "DeviceIndex": 0,
          "SubnetId": "subnet-0fb6b8382037df21b",
          "Groups": ["sg-0e9c64416d3b25178"]
        }
      ]
    }'
