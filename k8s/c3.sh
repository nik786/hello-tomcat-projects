
SECRET_NAME=us-east-1-ecr-registry
TOK=`aws ecr --region=us-east-1 get-authorization-token --output text --query authorizationData[].authorizationToken | base64 -d | cut -d: -f2`
EMAIL=email@email.com
kubectl create secret docker-registry $SECRET_NAME --docker-server=https://xxxxx.dkr.ecr.us-east-1.amazonaws.com --docker-username=AWS  --docker-password="${TOK}"  --docker-email="${EMAIL}" -n testing

kubectl patch serviceaccount default -p '{"imagePullSecrets":[{"name":"'$SECRET_NAME'"}]}' -n testing
