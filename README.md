# cloud-resume-challenege

This project is my online resume. It consists of a static web page, serving simple html & css delivered from an S3 bucket using CloudFront and Route 53 for the frontend and secured using ACM.

The serverless backend consists of an API Gateway endpoint calling a Lambda function to update a DynamoDB database for the resume's visitor counter.

Both the frontend and backend are automated with AWS SAM.

Github is used for version control, while Github Actions is used for the CI/CD pipeline.

You can visit my domain here which is the result of this project: https://christhompsoncloud.com/
