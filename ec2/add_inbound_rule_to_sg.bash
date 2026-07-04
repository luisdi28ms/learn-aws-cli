# Allow my laptop to SSH into instance
# aws ec2 authorize-security-group-ingress --group-id sg-0e9c64416d3b25178 \
#   --ip-permissions IpProtocol=tcp,FromPort=22,ToPort=22,IpRanges='[{CidrIp="201.203.6.112/32",Description="Allow SSH from my computer"}]'

# Allow web traffic on port 8080
aws ec2 authorize-security-group-ingress --group-id sg-0e9c64416d3b25178 \
  --ip-permissions IpProtocol=tcp,FromPort=8080,ToPort=8080,IpRanges='[{CidrIp="0.0.0.0/0",Description="Allow web traffic for PatientPing site"}]'
