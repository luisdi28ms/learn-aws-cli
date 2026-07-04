# Relational Database System

Before creating the DB you need:
- a subnet group 
- a security group

After running `./create_db_instance.bash` you can use the following command to wait for it to be ready:

```bash
aws rds wait db-instance-available --db-instance-identifier patientping-db
```

Once the DB is setup, need to add a `.env` file with the database URL.

```text
DATABASE_URL='postgresql://postgres:PASSWORD@patientping-db.RANDOM-ID.us-east-1.rds.amazonaws.com:5432/patientping'
```

## References
- [RDS](https://aws.amazon.com/rds/)
