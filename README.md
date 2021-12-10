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

### Project Outline
**Step 1: Propose and Scope the Project**
- Plan what your pipeline will look like.
-Decide which options you will include in your Continuous Integration phase. Use either Circle CI or Jenkins.
- Pick a deployment type - either rolling deployment or blue/green deployment.
- For the Docker application you can either use an application which you come up with, or use an open-source application pulled from the Internet, or if you have no idea, you can use an Nginx “Hello World, my name is (student name)” application.

**Step 2: Use Jenkins or Circle CI, and implement blue/green or rolling deployment.**
- If you're using Jenkins, create your Jenkins master box and install the plugins you will need.
- If you're using Circle CI, set up your circle CI account and connect your git repository.
Set up your environment to which you will deploy code.

**Step 3: Pick AWS Kubernetes as a Service, or build your own Kubernetes cluster.**
- Use Ansible or CloudFormation to build your “infrastructure”; i.e., the Kubernetes Cluster.
- It should create the EC2 instances (if you are building your own), set the correct networking settings, and deploy software to these instances.
- As a final step, the Kubernetes cluster will need to be initialized. The Kubernetes cluster initialization can either be done by hand, or with Ansible/Cloudformation at the student’s discretion.

**Step 4: Build your pipeline**
- Construct your pipeline in your GitHub repository.
- Set up all the steps that your pipeline will include.
- Configure a deployment pipeline.
- Include your Dockerfile/source code in the Git repository.
- Include with your Linting step both a failed Linting screenshot and a successful Linting screenshot to show the Linter working properly.

**Step 5: Test your pipeline**
- Perform builds on your pipeline.
- Verify that your pipeline works as you designed it.
- Take a screenshot of the Circle CI or Jenkins pipeline showing deployment, and a screenshot of your AWS EC2 page showing the newly created (for blue/green) or modified (for rolling) instances. Make sure you name your instances differently between blue and green deployments.
