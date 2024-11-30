
```bash
#!/bin/bash

# Ensure we are in the correct directory (optional)
# cd /path/to/your/terraform/project

echo "Starting local cleanup..."

# Remove Terraform lock file
if [ -f .terraform.lock.hcl ]; then
  echo "Removing .terraform.lock.hcl..."
  rm .terraform.lock.hcl
else
  echo ".terraform.lock.hcl not found. Skipping..."
fi

# Remove Terraform state files
if [ -f terraform.tfstate ]; then
  echo "Removing terraform.tfstate..."
  rm terraform.tfstate
else
  echo "terraform.tfstate not found. Skipping..."
fi

if [ -f terraform.tfstate.backup ]; then
  echo "Removing terraform.tfstate.backup..."
  rm terraform.tfstate.backup
else
  echo "terraform.tfstate.backup not found. Skipping..."
fi

# Remove the .terraform directory (provider plugins and cached modules)
if [ -d .terraform ]; then
  echo "Removing .terraform directory..."
  rm -rf .terraform
else
  echo ".terraform directory not found. Skipping..."
fi

# Optionally, remove any variable files containing sensitive data
if [ -f *.tfvars ]; then
  echo "Removing *.tfvars files..."
  rm -f *.tfvars
else
  echo "*.tfvars files not found. Skipping..."
fi

echo "Local cleanup completed."