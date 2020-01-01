Foreman Infrastructure
=============

### Summary
This repo contains puppet modules that are used to manage infrastructure used by the Foreman project. These modules manage many different pieces of software, including Jenkins build slaves, package build machines, the Jenkins frontend, as well as an internal Foreman instance and puppetmaster.

### Puppet module directories
The `puppet` folder contains the following directories for Puppet modules:

#### `forge_modules`
Modules straight from the [Puppet Forge](https://forge.puppet.com).

#### `git_modules`
Modules from other git repositories, not available from the Forge, this should be avoided, especially for new modules.

#### `modules`
Our own custom modules, relevant only in this particular repository for this particular setup.

#### `test_modules`
Modules relevant only in the Puppet spec tests, e.g. Puppet's core modules, that are coming bundled with the agent in a real setup.

### Jenkins Job Naming conventions

We're starting to implement some some job naming conventions.

**Note** Because `centos.org` is a shared environment all jobs are prefixed by `foreman-` to denote they're ours.

| **Name**                | **Convention**                        | **Example 1**            | **Example 2**                     |
|-------------------------|---------------------------------------|--------------------------|-----------------------------------|
| Nightly Package Builder | {git-repo}-{git-branch}-release       | foreman-develop-release  | hammer-cli-katello-master-release |
| CI pipeline             | {repository}-{environment}-pipeline   | foreman-nightly-pipeline | plugins-nightly-pipeline          |
| Pull Request testing    | {git-repo}-{optional-concern}-pr-test | katello-pr-test          | foreman-packaging-rpm-pr-test     |
