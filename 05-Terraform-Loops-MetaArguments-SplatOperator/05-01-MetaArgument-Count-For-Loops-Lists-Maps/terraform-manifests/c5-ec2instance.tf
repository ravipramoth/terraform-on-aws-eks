# EC2 Instance

/*
# Drawbacks of using count in this example
- Resource Instances in this case were identified using index numbers 
instead of string values like actual subnet_id
- If an element was removed from the middle of the list, 
every instance after that element would see its subnet_id value 
change, resulting in more remote object changes than intended. 
- Even the subnet_ids should be pre-defined or we need to get them again 
using for_each or for using various datasources
- Using for_each gives the same flexibility without the extra churn.
*/