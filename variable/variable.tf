variable "test" {
  default = 10
}
variable "list" {
  default = "[1,2,3]"
}
variable "map" {
   default={
     x=10
     y=20
   }
}


output "print" {
  value = var.test

}
output "print_list" {
  value =var.list
}

output "print_map" {
  value = var.map[x]
  //value = "map[y]"
}