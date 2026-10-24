resource "random_pet" "name" {
}

output "pet" {
  value = random_pet.name.id
}