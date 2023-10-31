# DevOps Automation Project: .NET Core CI/CD with Packer and Terraform

## Summary
In this project, I will work with a simple .NET application that will be tested and verified by a continuous integration (CI) pipeline with each push to the repository. 
The goal is to create a custom image of a Windows Server-based virtual machine with the necessary prerequisites for the application using HashiCorp Packer and provision this virtual machine on AWS using Terraform.

### Step 1: The Application
In this step, I created a simple .NET application and set up a continuous integration (CI) pipeline using GitHub Actions. With each push, the pipeline checks and tests the changes made to this application to discover any potential errors.

### Step 2: Custom Image
Here, I used HashiCorp Packer to create a custom image based on Windows Server that includes the prerequisites needed to run the previously created application. The image is created and hosted using Amazon Web Services (AWS).

Image Structure: Windows Base Image >> Prerequisite Configuration >> Application Installation

### Step 3: Virtual Machine
I am implementing a virtual machine using AWS that utilizes the custom image of the previously created application, ensuring that the prerequisites and the application are pre-installed upon VM creation. 
I am using Terraform to enable the creation of multiple VMs by modifying a local value in the Terraform configuration.

### Technologies used in this project:

- **.NET Core:** It was used for developing the application.
- **GitHub Actions:** To create and manage a continuous integration (CI) pipeline for checking and testing the application with each commit.
- **HashiCorp Packer:** To create a custom image of a Windows Server-based virtual machine that includes the prerequisites needed for the application.
- **Amazon Web Services (AWS):** To host and deploy the virtual machines and the custom image.
- **HashiCorp Terraform:** To define and manage infrastructure as code and facilitate the deployment of virtual machines in AWS.
- **Linux:** The entire project was implemented using a machine running on Ubuntu. 
  
These technologies were used in various stages of the project to successfully create, test, and deploy the application and associated infrastructure.
