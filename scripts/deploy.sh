#!/bin/bash

# Переменные окружения
AWS_REGION="us-west-2"
S3_BUCKET_NAME="your-bucket-name"

# Установка AWS CLI, если не установлен
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Installing..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
fi

# Копирование файлов веб-сайта в Amazon S3
aws s3 sync src/ s3://$S3_BUCKET_NAME/ --region $AWS_REGION --delete

echo "Website deployed successfully!"
