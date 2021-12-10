## Udacity DevOps Capstone Project

### Steps
1. Clone this repo and set up project in CircleCI
2. Add CircleCI environment variables: AWS_ACCESS_KEY_ID, AWS_DEFAULT_REGION, AWS_SECRET_ACCESS_KEY, DOCKER_PASSWORD, DOCKER_USERNAME
2. Run CI/CD in CircleCI pipeline with config.yml to deploy website version #1
3. Edit index.html for website version #2 and save
4. Run ./update_docker.sh--make sure to replace with your own AWS profile


### File Content
- **Config.yml:** CI/CD pipeline that deploys aws eks 
- **deployment.yml:** creates rolling update deployment 
- **service.yml:** creates ELB
- **Dockerfile:** instructions to assemble Docker image
- **./run_docker.sh:** builds image
- **./upload_docker.sh:** create docker path, authenticate and tag, and push image to docker repo
- **./update_docker:** build container with new index.html
