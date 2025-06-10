resource "aws_instance" "webapp" {
    instance_type = var.instance_type   
    ami = var.ami_id
    key_name = var.key_name
    user_data = file("user_data.sh")
    tags = {
        name = "webapp"
    }
}
