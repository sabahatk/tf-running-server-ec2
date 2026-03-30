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