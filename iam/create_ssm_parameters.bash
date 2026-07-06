aws ssm put-parameter \
  --name /DATABASE_URL \
  --value 'postgresql://postgres:XmnPPDQ6GR9pi@patientping-db.cgvy4sacatar.us-east-1.rds.amazonaws.com:5432/patientping' \
  --type String \
  --overwrite

aws ssm put-parameter \
  --name /CMO_NAME \
  --value 'Dr. Strangelove' \
  --type String
