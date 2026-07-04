# Allow my laptop to SSH into instance
# aws ec2 authorize-security-group-ingress --group-id sg-0e9c64416d3b25178 \
#   --ip-permissions IpProtocol=tcp,FromPort=22,ToPort=22,IpRanges='[{CidrIp="201.203.6.112/32",Description="Allow SSH from my computer"}]'

# Allow web traffic on port 8080
# aws ec2 authorize-security-group-ingress --group-id sg-0e9c64416d3b25178 \
#   --ip-permissions IpProtocol=tcp,FromPort=8080,ToPort=8080,IpRanges='[{CidrIp="0.0.0.0/0",Description="Allow web traffic for PatientPing site"}]'

# Add outbound rule to app server security group (assuming you want a specific rule)
# aws ec2 authorize-security-group-egress --group-id APP-SG-ID \
#   --ip-permissions IpProtocol=tcp,FromPort=5432,ToPort=5432,UserIdGroupPairs=[{GroupId=RDS-SG-ID}]

# Add inbound rule to DB security group
aws ec2 authorize-security-group-ingress --group-id sg-043eaac8c9505f1ed \
  --ip-permissions IpProtocol=tcp,FromPort=5432,ToPort=5432,UserIdGroupPairs=[{GroupId=sg-0e9c64416d3b25178}]
