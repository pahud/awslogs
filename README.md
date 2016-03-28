## AWS Cloudwatch Log agent for Docker

This is the Docker image for [AWS CloudWatch Logs agent](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/AgentReference.html) for AWS ECS.



### HOWTO



#### register-task-definition

```
aws --profile=<AWS_PROFILE> --region=<REGION> ecs register-task-definition --cli-input-json file://web.json
```

You must specify ***REGION*** environment variable in the task definition, indicating the AWS region of cloudwatch log.



#### create-service

```
aws --profile=<AWS_PROFILE> --region=<REGION> ecs create-service --service-name web --task-definition arn:aws:ecs:<region>:<aws_account>:task-definition/<name>:<revision> --desired-count 1
```

