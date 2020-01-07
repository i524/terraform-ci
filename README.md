# terraform-ci

a Dockerfile for terraform in CircleCI.

## Why?

The image is based on [hashicorp/terraform](https://hub.docker.com/r/hashicorp/terraform) but below are also installed:

1. [tfnotify](https://github.com/mercari/tfnotify)
1. tzdata
   (Without tzdata `terraform plan` might fail when your .tf files include timezone because [`time.LoadLocation`](https://golang.org/pkg/time/#LoadLocation) requires zoneinfo files.)
