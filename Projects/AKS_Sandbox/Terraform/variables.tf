# Variable for Azure Resource Group Module


variable "Location" {
  type = string
  default = "westus2"
}
variable "LocationMap" {
    type = map(string)
}
variable "Project" {
    type = string
}
variable "Environments" {
    type = map(string)
}
variable "InputEnv" {
    type = string
}

variable "namingToFollow" {
    type = string
    default = "noname"
}

variable "App" {
        type = string
}