aws rds create-db-subnet-group \
  --db-subnet-group-name patientping-private-subnet-group \
  --db-subnet-group-description 'Private subnets for RDS DB instances' \
  --subnet-ids subnet-0d1a64542b5546ea6 subnet-0836553acd9b80725
