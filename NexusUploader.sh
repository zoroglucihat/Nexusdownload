  #!/bin/bash
  # This script is looking inside the folder and upload to the nexus
	for d in *; do
	curl -v -u admin:password --upload-file $d \
    http://<ip>:8081/repository/reponame/ \
    $d
	done
