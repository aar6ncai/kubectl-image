REGION = ap-southeast-2

put:
	aws ssm put-parameter --region $(REGION) --name "/Test/12/helloWorld" --value "My1stParameter" --type SecureString --overwrite  --key-id ff466877-f228-44e4-b0a1-1bb58f2202a5

get:
	aws ssm get-parameter --region $(REGION) --name "/Test/12/helloWorld"
	aws ssm get-parameter --region $(REGION) --name "/Test/12/helloWorld" --with-decryption

secret:
	kubectl create secret generic dev-kube-config --from-file=./config -n kube-system-aaron-test

cronjob:
	kubectl apply -f cron.yaml

describe:
	kubectl describe secrets/dev-kube-config -n kube-system-aaron-test
