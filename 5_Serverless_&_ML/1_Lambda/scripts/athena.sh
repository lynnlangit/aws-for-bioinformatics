# Athena Script Example

# Set up the environment
export PATH=/usr/local/bin:$PATH

# Set up the variables for Athena Query
export AWS_DEFAULT_REGION=us-east-1

# Define a schema for the Athena Query
export SCHEMA="${AWS_ACCOUNT_ID}_athena_query_schema"

# Create the Athena Query Schema
aws athena start-query-execution \
    --query-string "CREATE EXTERNAL TABLE ${SCHEMA}.${TABLE} ( \
        ${COLUMNS} \
    ) \
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' \
    WITH SERDEPROPERTIES ( \
        'separatorChar' = ',', \
        'quoteChar' = '\"' \
    ) \
    STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.CSVInputFormat' \
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' \
    LOCATION 's3://${S3_BUCKET}/${S3_KEY}'"

# Run the Athena Query
aws athena start-query-execution \
    --query-string "SELECT * FROM ${SCHEMA}.${TABLE}" \
    --result-configuration "OutputLocation = 's3://${S3_BUCKET}/${S3_KEY}'"



# Clean up the Athena Query Schema
aws athena start-query-execution \
    --query-string "DROP EXTERNAL TABLE ${SCHEMA}.${TABLE}"