variable "ami_id" {
  type    = string
  default = "ami-0c3389a4fa5bddaad"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type    = string
  default = "Apache_Server"
}

variable "key_name" {
  type    = string
  default = "instance-key-pair"
}

variable "user_data_file" {
  type    = string
  default = "user-data-script.sh"
}

variable "public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMY3n5jutcZOccHJXuTPGWJOhin96D4Kqg2WearVtz09 sabah@S"
}

variable "ssh_desc" {
  type    = string
  default = "SSH"
}

variable "http_desc" {
  type    = string
  default = "HTTP"
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "http_port" {
  type    = number
  default = 80
}


variable "outbound_port" {
  type    = number
  default = 0
}

variable "protocol_tcp" {
  type    = string
  default = "tcp"
}

variable "protocol_outbound" {
  type    = string
  default = "-1"
}

variable "cidr_block" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tag" {
  type    = string
  default = "TF_SG"
}

variable "sg_name" {
  type    = string
  default = "Apache SG"
}