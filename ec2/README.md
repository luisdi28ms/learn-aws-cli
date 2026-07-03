# Elastic Container (EC2)

Allocated an Elastic IP Address, it allows to have a fixed public IP so that our EC2 instance is reachable from the web. The advantage is that the IP can be easily pointed to other instances to maintain server availability.

For now, the EIP is only associated with patientping-web instance.

Why Internet Service Providers (ISP) change IP addresses?
[Dynamic DNS](!https://en.wikipedia.org/wiki/Dynamic_DNS)

## References

- [Elastic IP Address](!https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
