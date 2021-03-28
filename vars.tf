variable "tags" {
  type        = map(string)
  description = "Tags"
  default = {
    provisioner = "terraform"
  }
}
