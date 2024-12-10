import os
def lambda_handler(event, context):
    
    # display the event
    print(f'Event received: {event}')
    env = os.environ.get('ENV_VAR_1')
    print(f'Environment variable: {env}')
    return {
        'statusCode': 200,
        'body': "Hello world!"
    }