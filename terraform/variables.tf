variable "aws_region" {
  description = "Região da AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Nome do projeto"
  type        = string
  default     = "vprofile"
}

variable "instance_name" {
  description = "Nome da instância"
  type        = string
  default     = "vpro01"
}

variable "instance_type" {
  description = "Tipo da instância"
  type        = string
  default     = "t3.small"
}

variable "instance_ami_id" {
  description = "ID da AMI usada na instância"
  type        = string
  default     = "ami-0360c520857e3138f"
}

variable "key_pair_name" {
  description = "Nome da keypair da instância"
  type        = string
  default     = "vpro-kp"
}

variable "key_pair_public_key" {
  description = "Chave pública da keypair"
  type        = string
}

variable "security_group_name" {
  description = "Nome do security group da instância"
  type        = string
  default     = "vpro-sg"
}

variable "security_group_description" {
  description = "Descrição do security group da instância"
  type        = string
}