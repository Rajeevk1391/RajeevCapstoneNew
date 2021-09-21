# DevopsCapstone
My AWS Devops capstone project

In this project I have applied the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

1) Working in AWS
2) Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
3) Building pipelines
4) Working with Ansible and CloudFormation to deploy clusters
5) Building Kubernetes clusters
6) Building Docker containers in pipelines

I have developed a CI/CD pipeline for a flask applications with rolling deployment. I have also included typographical checking (aka “linting”).

After completing Continuous Integration I have set up Continuous Deployment, which includes:

Pushing the built Docker container(s) to the Docker repository; and
Deploying these Docker container(s) to a small Kubernetes cluster. I have used AWS Kubernetes as a Service and eksctl. I ran these from within Circle CI as an independent pipeline.
I have used rolling deployment for the Docker application which is a very simple hello-world flask application.

Initial Setup for the project.

1) Install kubectl
2) Install eksctl
3) Install aws cli
4) AWS Configure
5) Create using eksctl create cluster command.
6) Build Circle ci pipelines.
7) expose the service.
