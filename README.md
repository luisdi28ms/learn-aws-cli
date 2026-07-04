# Learn AWS CLI

Just some notes on the Learn AWS course in https://boot.dev

```bash
aws login
```

## Commands to get the project backup

1. Launch ec2 from template:

```bash
./ec2/launch_ec2_from_template.bash
```

1. Allocate Elastic IP Address:

```bash
./ec2/allocate_elastic_ip_address.bash
```

3. Update `./ec2/associate_eip_address.bash` with ec2 instanceID and eip address AllocationId then run it:

```bash
./ec2/associate_eip_address.bash
```

4. Update ssh connection at `~/.ssh/config` with the new IP Address then:

```bash
ssh patientping
cd patientping-web
uv run patientping.py
```

In a new terminal:

```bash
open [Public IP Address]:8080
```
