# awscli-helm

# What is awscli?

> Awscli is the Amazon web services command line interface.

[Overview of awscli](https://docs.aws.amazon.com/cli/index.html)

# What is Helm?

> Helm is the package manager for kubernetes.

[Overview of helm](https://helm.sh/docs/)

# TL;DR;

```bash
$ docker run -ti --rm bearengineer/awscli-helm
```

```bash
$ docker run -ti -e 'AWS_ACCESS_KEY_ID=********************' -e 'AWS_SECRET_ACCESS_KEY=****************************************' -v '/Users/bearengineer/.kube:/root/.kube' --rm bearengineer/awscli-helm helm list
```

```bash
$ docker run -ti -v '/Users/bearengineer/.aws:/root/.aws' -v '/Users/bearengineer/.kube:/root/.kube' --rm bearengineer/awscli-helm helm listt
```


# Supported tags and respective `Dockerfile` links

* [`aws-1.16-helm-2.14`, `latest` (Dockerfile)](https://github.com/bearengineer/awscli-helm/blob/Dockerfile)

Subscribe to project updates by watching the [bearengineer/awscli-helm GitHub repo](https://github.com/bearengineer/awscli-helm).

# Get this image

The recommended way to get the Bear Engineer helm Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/bearengineer/helm).

```bash
$ docker pull bearengineer/awscli-helm:latest
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/bearengineer/awscli-helm/tags/) in the Docker Hub Registry.

```bash
$ docker pull bearengineer/awscli-helm:[TAG]
```

If you wish, you can also build the image yourself.

```bash
$ docker build -t bearengineer/awscli-helm:latest 'https://github.com/bearengineer/awscli-helm.git#master'
```

# Configuration

## Running commands

To run commands inside this container you can use `docker run`, for example to execute `helm --version` you can follow the example below:

```bash
$ docker run --rm --name helm bearengineer/awscli-helm:latest -- helm version
```

Consult the [helm Reference Documentation](https://helm.sh/docs/) or the [AWS CLI Reference Documentation](https://docs.aws.amazon.com/cli/index.html) to find the completed list of commands available.

## AWS Credentials

AWS credentials can either be passed by environment variables, or by mounting a volume with aws credentials file under `/root/.aws`.

### Environment variables

```bash
$ docker run -ti -e 'AWS_ACCESS_KEY_ID=********************' -e 'AWS_SECRET_ACCESS_KEY=****************************************' --rm bearengineer/awscli-helm aws s3 ls
```

### AWS directory

```bash
docker run -ti -v '/Users/bearengineer/.aws:/root/.aws' --rm bearengineer/awscli-helm aws s3
```

## helm credentials

helm credentials can be passed by mounting a volume with the kubeconfig under `/root/.kube`.

### helm directory

```bash
docker run -ti -v '/Users/bearengineer/.kube:/root/.kube' --rm bearengineer/awscli-helm helm get pods
```

# Contributing

We'd love for you to contribute to this container. You can request new features by creating an [issue](https://github.com/bearengineer/awscli-helm/issues), or submit a [pull request](https://github.com/bearengineer/awscli-helm/pulls) with your contribution.

# Issues

If you encountered a problem running this container, you can file an [issue](https://github.com/bearengineer/awscli-helm/issues). For us to provide better support, be sure to include the following information in your issue:

- Host OS and version
- Docker version (`docker version`)
- Output of `docker info`
- Version of this container
- The command you used to run the container, and any relevant output you saw (masking any sensitive information)

# License

Copyright (c) 2019 Bear Engineer. All rights reserved.

This work is licensed under the terms of the MIT license.  
For a copy, see <https://opensource.org/licenses/MIT>.

