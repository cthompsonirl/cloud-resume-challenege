# cloud-resume-challenge
This project is my online resume. 

It consists of a static web page, serving simple html & css delivered from an S3 bucket using CloudFront and Route 53 for the frontend and secured using ACM.

The serverless backend consists of an API Gateway endpoint calling a Lambda function to update a DynamoDB database for the resume's visitor counter.

Github in combination with Terraform Cloud is used for version control and for the CI/CD pipeline.

You can visit my website here which is the result of this project: https://christhompsoncloud.com/
