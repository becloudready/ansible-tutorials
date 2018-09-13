import argparse
import boto.ec2

access_key = ''
secret_key = ''

def get_ec2_instances(region):
    ec2_conn = boto.ec2.connect_to_region(region,
                aws_access_key_id=access_key,
                aws_secret_access_key=secret_key)
    reservations = ec2_conn.get_all_reservations()
    for reservation in reservations:
        print region+':',reservation.instances[0].ip_address,reservation.instances[0].id,reservation.instances[0].public_dns_name


    for vol in ec2_conn.get_all_volumes():
        print region+':',vol.id

import boto3

def main():
    regions = ['ca-central-1']
    parser = argparse.ArgumentParser()
    parser.add_argument('access_key', help='Access Key');
    parser.add_argument('secret_key', help='Secret Key');
    args = parser.parse_args()
    global access_key
    global secret_key
    access_key = args.access_key
    secret_key = args.secret_key

    for region in regions: get_ec2_instances(region)

if  __name__ =='__main__':main()