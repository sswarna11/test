import pyarrow.parquet as pq
# Open the Parquet file
parquet_file = pq.ParquetFile('sample1.parquet')
# Get the schema
schema = parquet_file.schema
print(schema)
