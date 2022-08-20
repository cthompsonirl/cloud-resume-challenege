import json
import boto3

client = boto3.client('dynamodb', region_name='us-east-1')

def lambda_handler(event, context):
    TableName = 'cloud-resume-visitors'
    PrimaryColumnName = 'count'
    PrimaryKey = 'view-count'
    DB = boto3.resource('dynamodb', region_name='us-east-1')
    client = boto3.resource('dynamodb', region_name='us-east-1')
    table = DB.Table(TableName)
    
    response = table.update_item(
        Key={PrimaryColumnName:PrimaryKey },
        UpdateExpression="SET View_Count = if_not_exists(View_Count, :start) + :count",
        ExpressionAttributeValues={
            ":count": 1,
            ":start": 0,
        }
    )
    response = table.get_item(
            Key={
                    PrimaryColumnName:PrimaryKey

            }


    )
    count = int(response["Item"]["View_Count"])
    
    return {
        'statusCode': 200,
        'headers': {"Access-Control-Allow-Origin": "*",
                        "Access-Control-Allow-Methods": "GET",
                        "Access-Control-Allow-Headers": "Content-Type"},
        'body': json.dumps(count)}