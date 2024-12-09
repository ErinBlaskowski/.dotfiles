linux: clean
	@chmod +x ./bin/linux.sh  # Ensure execute permissions on linux.sh.
	./bin/linux.sh  # Run the linux.sh script.

# Define the clean target.
clean:
	@chmod +x ./bin/cleanup.sh  # Ensure execute permissions on cleanup.sh.
	./bin/cleanup.sh  # Run the cleanup.sh script.
