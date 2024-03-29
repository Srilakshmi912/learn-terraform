//variable block is used to define values
variable "test" {
  default = 10
}
variable "list" {
  default = [1,2,3]
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
  value =var.list[1]
}

output "print_map" {
  value = var.map["x"]
  //value = "map[y]"
}
//we can declare empty variables using tfvar files
variable "env"{}

output "printingemptyvariableenv" {

  value = var.env
}
//3 types of variables available in terraform String (double quotes),number(no quotes),boolean
