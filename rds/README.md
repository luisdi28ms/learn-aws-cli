# Relational Database System

Before creating the DB you need:
- a subnet group 
- a security group

After running `./create_db_instance.bash` you can use the following command to wait for it to be ready:

```bash
aws rds wait db-instance-available --db-instance-identifier patientping-db
```

## References
- [RDS](https://aws.amazon.com/rds/)
