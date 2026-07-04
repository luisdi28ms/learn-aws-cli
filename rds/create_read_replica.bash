aws rds create-db-instance-read-replica \
  --db-instance-identifier patientping-replica \
  --source-db-instance-identifier patientping-db \
  --db-instance-class db.t3.micro \
  --vpc-security-group-ids sg-043eaac8c9505f1ed \
  --no-publicly-accessible
