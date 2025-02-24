variable "aws_profile" {
  type    = string
  default = "kavish"
}

variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "instance_type" {
    default = "t2.micro"
  type = string

}

variable "availability_zone_1a" {
  type    = string
  default = "ca-central-1a"
}

variable "availability_zone_1b" {
  type    = string
  default = "ca-central-1b"
}