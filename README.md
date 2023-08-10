# 🚀 AWS Lambda Deployment with Terraform and Github Actions

Welcome to the AWS Lambda Deployment project, where we deploy a simple AWS Lambda function and its associated infrastructure using Terraform (Infrastructure as Code) and establish CI/CD using Github Actions. 💼

## 🌟 Project Features

1. A simple Lambda handler (`src/file_reader/reader.py`) that responds to an S3 event, verifies if it pertains to a `txt` file, and logs the file's contents.
2. Comprehensive error handling, including custom error management and unexpected `RuntimeErrors`.
3. Rigorous testing (`test/test_file_reader/test_lambda.py`) utilizing the `moto` library to mock AWS resources. Achieved test coverage for executed code is 86%.
4. Streamlined project setup through a `Makefile`, offering security vulnerability checks with `bandit` and `safety`, and PEP8 compliance verification using `flake8`.
5. Infrastructure provisioning on AWS via Terraform, including Lambda, IAM, and S3.
6. Seamless Continuous Integration and Delivery (CI/CD) pipeline using Github Actions with the deployment workflow defined in `deploy.yaml`.

### 🛠️ Prerequisites for Local Development

Before you get started, ensure you have the following tools installed:

- Python
- Make
- AWS CLI tool (__version 2__) - You can find installation instructions here: [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### 📚 Installation Instructions

1. Start by forking and cloning this repository.
2. Open your terminal and navigate to the root directory of the project.
3. Run the following commands:

```bash
make requirements
make dev-setup
make run-checks
