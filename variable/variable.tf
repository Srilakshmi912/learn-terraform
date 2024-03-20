variable "test" {
  value = 10
}
variable "list" {
  value = "[1,2,3]"
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
  value = "list[1]"
}

output "print_map" {
  value = "map[x]"
  //value = "map[y]"
}