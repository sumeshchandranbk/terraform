variable "region" {
  default     = "us-east-1"
  type        = string
  description = "Provide region name to create the instance"

}
variable "ami-id" {
  default     = "ami-063d43db0594b521b"
  type        = string
  description = "Ami id"

}
variable "instance_type" {
  default = "t2.micro"
  type    = string


}
variable "intance_name" {
  default     = "learn-ec2"
  type        = string
  description = "This value refer aws ec2 instance name"

}