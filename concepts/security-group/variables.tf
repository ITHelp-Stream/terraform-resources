variable "vpn_ip" {
  default = "116.50.30.50/32"
}

variable "https_port" {

  type = number

}

variable "http_port" {

  type = number

}

variable "protocol" {

  type = string

}

variable "custom_port" {
  type = number
}
