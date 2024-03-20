variable "test" {
  default = 10
  list=[1,2,3]
  map={
    a=10
  }

}
output "print" {
  value = var.test

}