[![Build Status](https://travis-ci.org/albizon/charts.svg?branch=master)](https://travis-ci.org/albizon/charts)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/ce27797732674252bd283f1f9b199cc7)](https://www.codacy.com/manual/alexis.kayak/charts?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=albizon/charts&amp;utm_campaign=Badge_Grade)
# Personnal helm Library for Kubernetes

Personnal applications, ready to launch on Kubernetes using [Kubernetes Helm](https://github.com/helm/helm).

## TL;DR

```bash
$ helm repo add albizon https://albizon.github.io/charts/stable
$ helm search repo albizon
$ helm install my-release albizon/<chart>
```

## Before you begin

### Setup a Kubernetes Cluster

For setting up Kubernetes on cloud platforms or bare-metal servers refer to the Kubernetes [getting started guide](http://kubernetes.io/docs/getting-started-guides/).

### Install Helm

Helm is a tool for managing Kubernetes charts. Charts are packages of pre-configured Kubernetes resources.

To install Helm, refer to the [Helm install guide](https://github.com/helm/helm#install) and ensure that the `helm` binary is in the `PATH` of your shell.

### Add Repo

The following command allows you to download and install all the charts from this repository:

```bash
$ helm repo add albizon https://albizon.github.io/charts/stable
```

### Add Developpement Repo

The following command allows you to download and install all the charts from this developpement repository:


```bash
$ helm repo add albizon-dev https://albizon.github.io/charts/dev
```

### Using Helm

Once you have installed the Helm client, you can deploy a Helm Chart into a Kubernetes cluster.

Please refer to the [Quick Start guide](https://helm.sh/docs/intro/quickstart/) if you wish to get running in just a few commands, otherwise the [Using Helm Guide](https://helm.sh/docs/intro/using_helm/) provides detailed instructions on how to use the Helm client to manage packages on your Kubernetes cluster.

Useful Helm Client Commands:
* View available charts: `helm search repo`
* Install a chart: `helm install my-release albizon/<package-name>`
* Upgrade your application: `helm upgrade`

# License

Copyright (c) 2020 Alexis BIZON

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
