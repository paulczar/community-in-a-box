# Community in a Box

A [in]Complete Community Management platform !

> Free as in [Matt Broberg](https://twitter.com/mbbroberg) buying you lunch, but then having to listen to him wax lyrical about the four freedoms.

## Includes

* [Discourse](./charts/discourse/README.md)

## Todo

1. Chat application - riot.im or rocketchat
1. blogging platform ? ( or just use hugo + gh-pages )
1. Microblogging platform
1. [Jitsi Meet](https://jitsi.org/jitsi-meet/)
1. Conference / CFP app ?
1. LDAP / SSO Directory service ? or just tie into GH ?

## Installing

Community in a Box uses [helmfile]() to compose several helm charts together to enable deploying itself with a gitops style workflow.

### Prerequisites

* [Helmfile](https://github.com/roboll/helmfile/releases)
* [Helm 3](https://github.com/helm/helm/releases/tag/v3.1.2)
* [Helm Diff Plugin](https://github.com/databus23/helm-diff#install)
* [yq](https://mikefarah.gitbook.io/yq/#install)

To deploy a very simple default installation of Community in a Box simple run:

```bash
./scripts/check-namespaces.sh -c -d
helmfile apply
```

## Customizing

Community in a Box is customizable by providing an environment path. That path contains at least two files; `envs.sh` and `charts.yaml.gotmpl` both of which control a different aspect.

**charts.yaml.gotmpl**

Overrides for the default [charts.yaml](./charts.yaml) file which lists the helm charts and their characteristics to install such as their version.

**envs.sh**

A script that can be sourced into your shell to load up environment variables to be rendered into the charts. The reason we use environment variables here is that so you can source the contents of those variables from wherever you want without making this project overly complex.

### Examples

#### default

`envs/default` is an environment that does not override any settings. However it does list all of the variables you might want to set to customize your install.

To install or upgrade this environment you would run:

```bash
. ./envs/default/envs.sh
./scripts/check-namespaces.sh -c -d
helmfile apply
```

#### coming soon

more example envs coming soon.
