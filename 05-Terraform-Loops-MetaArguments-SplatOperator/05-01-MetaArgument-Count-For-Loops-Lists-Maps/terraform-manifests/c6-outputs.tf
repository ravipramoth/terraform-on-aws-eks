# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/

# Output - For Loop with List
output "for_list" {
  description = "loop testing output"
  value = [for instance in aws_instance.demo: instance.public_dns]
}
# Output - For Loop with Map
output "for_list_map" {
  description = "list with map "
  value = {for instance in aws_instance.demo: instance.id => instance.public_dns}
  
}

# Output - For Loop with Map Advanced
output "for_list_adv" {
  description = "for list map with instance"
  value = {for i, instance in aws_aws_instance.demo: c => instance.public_dns }
  
}



# Output Latest Generalized Splat Operator - Returns the List

