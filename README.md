# **Project: Wisecow Application Deployment and Script Automation**

This repository contains two main tasks:  
1. **Containerisation and Deployment of the Wisecow Application on Kubernetes.**  
2. **Script Automation for System Health Monitoring and Log Analysis.**

---

## **Task 1: Containerisation and Deployment of Wisecow Application**

### **Objective**
- Containerize the [Wisecow Application](https://github.com/nyrahul/wisecow).
- Deploy the application to a Kubernetes environment with secure TLS communication.
- Set up Continuous Integration and Deployment (CI/CD) with GitHub Actions.

### **Steps to Execute**

#### **1. Dockerization**
- A `Dockerfile` is included to create a container image for the Wisecow application.
- The image can be pushed to a container registry (e.g., Docker Hub).

#### **2. Kubernetes Deployment**
- Kubernetes manifest files are provided to deploy the Wisecow application.
- The application is exposed using a Kubernetes service.

#### **3. CI/CD Pipeline**
- GitHub Actions is configured to:
  - Automatically build and push Docker images on new commits.
  - Deploy updates to Kubernetes after successful builds.

#### **4. TLS Implementation**
- TLS is implemented by creating a Kubernetes secret and modifying deployment manifests.

---

### **Repository Structure**
plaintext
task1/
├── Dockerfile                 # Dockerfile for containerization
├── kubernetes/
│   ├── wisecow-deployment.yaml  # Deployment manifest
│   ├── wisecow-service.yaml     # Service manifest
├── .github/
│   └── workflows/
│       └── deploy.yml         # GitHub Actions CI/CD workflow
