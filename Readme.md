# SonarQube

SonarQube is a self-managed, automatic code review tool that systematically helps you deliver clean code. As a core element of our Sonar solution, SonarQube integrates into your existing workflow and detects issues in your code to help you perform continuous code inspections of your projects. The tool analyses 30+ different programming languages and integrates into your CI pipeline and DevOps platform to ensure that your code meets high-quality standards. [See more](https://docs.sonarqube.org/latest/)

![alt text](https://csl.com.co/wp-content/uploads/2020/10/sonar.png)

This project is aimed to provide various ways to install SonarQube using technologies like Docker and Iac.

## Installation using Docker
![alt text](https://d1.awsstatic.com/acs/characters/Logos/Docker-Logo_Horizontel_279x131.b8a5c41e56b77706656d61080f6a0217a3ba356d.png)

Check if Docker is installed in your OS. Otherwise, follow documentation according to your needs. [Install Docker Engine](https://docs.docker.com/engine/install/)

## Usage

Run SonarQube container with attached volumes
```bash
bash Docker/Run_SonarQ.sh
```
Once your instance is up and running, Log in to http://localhost:9000 using System Administrator credentials:

```text
login: admin
password: admin
```

[See more](https://docs.sonarqube.org/latest/try-out-sonarqube/)

&nbsp;

Remove SonarQube container with all its attached volumes
```bash
bash Docker/Delete_SonarQ.sh
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
