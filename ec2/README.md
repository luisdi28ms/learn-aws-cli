# Elastic Container (EC2)

Allocated an Elastic IP Address, it allows to have a fixed public IP so that our EC2 instance is reachable from the web. The advantage is that the IP can be easily pointed to other instances to maintain server availability.

For now, the EIP is only associated with patientping-web instance.

Added an inbound rule on Port 22 to enable ssh connection from my laptop, also included my IP Address.

Why Internet Service Providers (ISP) change IP addresses?
[Dynamic DNS](!https://en.wikipedia.org/wiki/Dynamic_DNS)

In AWS: Security Group == Firewall

## Summary

1. EC2 instance communicates with the server's public Elastic IP address.
2. The server is in a public subnet with a route to the internet gateway.
3. The security group allows inbound traffic on 22/tcp from our public IP address.
4. Our SSH private key matches the public key we uploaded to AWS.

Note: I made a mistake with AMI version, to fix it I only needed to launch a new instance and then attach the sg group and associate teh eip address previously created.

### Cost Summary

Currently using the EC2 instance and Elastic IP; cost remains ~$7.60/mo for the instance plus ~$3.60/mo for the EIP.

## References

- [Elastic IP Address](!https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
- [Security Group](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html)
