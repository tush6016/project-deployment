resource "aws_instance" "eks" {
    ami = "ami-0f924dc71d44d23e2"
    instance_type = "t3.small"
    key_name = "gen"
    
    user_data = <<-EOF
                    #!/bin/bash
                    sudo yum update -y
                    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
                    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
                    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
                    unzip awscliv2.zip
                    sudo ./aws/install
                    EOF
                    
    tags = {
      Name = "eks"
    }
  
}
