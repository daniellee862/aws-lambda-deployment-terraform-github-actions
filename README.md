# AWS Lambda deployment with Terraform and Github Actions

The purpose of this project is to deploy a simple AWS Lambda and associated infrastructure to an AWS account using Terraform (IAC) and implement CI/CD with Github Actions. 

## Features of the project:
1. A simple lambda handler (`src/file_reader/reader.py`) that accepts an S3 event, checks if it refers to a `txt` file and then logs the contents of the file.
2. The code features trapping of specific errors (including a custom error) and handles unexpected `RuntimeErrors`.
3. The code is tested (`test/test_file_reader/test_lambda.py`) using the `moto` library to mock AWS artefacts. Test coverage for executed code is 86%.
4. The project build is via a `Makefile` which allows `bandit` and `safety` checks for security vulnerabilities, and `flake8` checks for PEP8 compliance.
5. AWS infastructure provisioned with Terraform (Infastructure as code); Lambda, IAM, S3.
6. continuos integration and delivery (CI/CD) with Github Action; deploy.yaml.


### Prerequisites for local development
- Python
- Make
- AWS CLI tool (__version 2__) - installation instructions here: [https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### __Instructions for installation__
1. Fork and clone this project.
1. In the terminal, navigate to the root directory of the project, and run:
    ```bash
    make requirements
    ```
1. Then run:
    ```bash
    make dev-setup
    make run-checks
    ```


 
