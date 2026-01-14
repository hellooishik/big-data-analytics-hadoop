CREATE EXTERNAL TABLE reviews (
    marketplace STRING,
    customer_id STRING,
    review_id STRING,
    product_id STRING,
    product_title STRING,
    star_rating INT,
    review_date STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/amazon_reviews';