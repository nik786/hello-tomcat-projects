aws --region us-east-1 ecr get-login-password \
    | docker login \
        --password-stdin \
        --username AWS \
        "xxxx.dkr.ecr.us-east-1.amazonaws.com"


aws ecr get-login --region us-east-1  | docker login --password-stdin --username AWS  "xxxx.dkr.ecr.us-east-1.amazonaws.com"

echo $(aws ecr get-login-password)| docker login --password-stdin --username AWS xxxx.dkr.ecr.us-east-1.amazonaws.com

docker login -u AWS -p $(aws ecr get-login-password) https://$(aws sts get-caller-identity --query 'xxxxx' --output text).dkr.ecr.us-east-1.amazonaws.com
