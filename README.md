# tf-ec2-lab

new repo + clone 

backend.tf (change key) - kept at s3 storage 

provider.tf 

ec2 - Amazon Machine Image (AMI) 

subnet_id

keypair name

new security group (virtual firewall for your EC2 instances to control incoming and outgoing traffic):
- outbond / egress 0.0.0.0/0 (only the instance, no restrictions at all)
- inbound / igress 22, 80

ami id image OS 