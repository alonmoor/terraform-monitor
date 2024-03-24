provider "aws" {
  region = "il-central-1"
}

resource "aws_instance" "fubar" {
  subnet_id     = "subnet-04d9cb5e9a8089570"
  ami           = "ami-097de2ef264f2e65e"
  instance_type = "t3.micro"

  // Install Docker Compose using remote-exec provisioner
# provisioner "remote-exec" {
#   connection {
#     type        = "ssh"
#     user        = "ubuntu"
#     private_key = file("~/.ssh/id_rsa")
#     host        = aws_instance.example.public_ip
#   }

#   inline = [
#     "sudo apt-get update",
#     "sudo apt-get install -y docker-compose",
#     // Other installation steps if needed
#   ]
# }

# // Run docker-compose up
# provisioner "remote-exec" {
#   when = "after"
#   connection {
#     type        = "ssh"
#     user        = "ubuntu"
#     private_key = file("~/.ssh/id_rsa")
#     host        = aws_instance.example.public_ip
#   }

#   inline = [
#     "cd ../",
#     "docker-compose up -d",
#   ]
# }


}

# resource "digitalocean_droplet" "web" {
#   # ...

#   provisioner "file" {
#     source      = "compose-app/"
#     destination = "/app"
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "cd /app",
#       "docker-compose up",
#     ]
#   }
# }





