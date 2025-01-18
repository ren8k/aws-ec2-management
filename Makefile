# EC2 Instance Management Makefile

# Configuration
INSTANCE_ID := i-XXXXXXXXXXXXXXXXX
PROFILE := default

# PHONY targets to avoid conflicts with files of the same name
.PHONY: start stop status help

# Default target
help:
	@echo "Available commands:"
	@echo "  make start  - Start EC2 instance"
	@echo "  make stop   - Stop EC2 instance"
	@echo "  make status - Check EC2 instance status"

# Start EC2 instance
start:
	@echo "Starting EC2 instance $(INSTANCE_ID)..."
	aws ec2 start-instances --instance-ids $(INSTANCE_ID) --profile $(PROFILE)

# Stop EC2 instance
stop:
	@echo "Stopping EC2 instance $(INSTANCE_ID)..."
	aws ec2 stop-instances --instance-ids $(INSTANCE_ID) --profile $(PROFILE)

# Check instance status
status:
	@echo "Checking EC2 instance $(INSTANCE_ID) status..."
	aws ec2 describe-instances --instance-ids $(INSTANCE_ID) \
		--query "Reservations[*].Instances[*].[InstanceId, State.Name]" \
		--output text \
		--profile $(PROFILE)
